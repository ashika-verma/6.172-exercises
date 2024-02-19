#include <iostream>
#include <chrono>
#include <stack>
using namespace std;

constexpr int size = 9;

constexpr int rowCheck[size * 2] = {1, 2, 0, 2, 0, 1, 4, 5, 3, 5, 3, 4, 7, 8, 6, 8, 6, 7};

char sudoku_board[size][size] = {
    {5, 3, 0, 0, 7, 0, 0, 0, 0},
    {6, 0, 0, 1, 9, 5, 0, 0, 0},
    {0, 9, 8, 0, 0, 0, 0, 6, 0},
    {8, 0, 0, 0, 6, 0, 0, 0, 3},
    {4, 0, 0, 8, 0, 3, 0, 0, 1},
    {7, 0, 0, 0, 2, 0, 0, 0, 6},
    {0, 6, 0, 0, 0, 0, 2, 8, 0},
    {0, 0, 0, 4, 1, 9, 0, 0, 5},
    {0, 0, 0, 0, 8, 0, 0, 7, 9}};

void printSudokuBoard()
{
    for (int i = 0; i < size; ++i)
    {
        for (int j = 0; j < size; ++j)
        {
            std::cout << sudoku_board[i][j] + 0 << " ";
        }
        std::cout << "\n";
    }
}

constexpr int empty_size = size * size;
struct boardDesc
{
    int boardSize;              // tells you when we get to the end of empty boxes
    int emptyBoxes[empty_size]; // encoded [r_1|c_1, r_2|c_2]
};

int getEmptyBoxes(const char (&puzzle)[size][size], int (&emptyBoxes)[empty_size])
{
    int counter = 0;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            if (puzzle[i][j] == 0)
            {
                emptyBoxes[counter] = i << 4 | j;
                counter += 1;
            }
        }
    }
    return counter;
}

bool solve_board(char (&puzzle)[size][size], int (&emptyBoxes)[empty_size], const int curr_loc)
{

    if (curr_loc == -1)
    {
        return true;
    }

    int r = emptyBoxes[curr_loc] >> 4;
    int c = emptyBoxes[curr_loc] & 0b00001111;

    int valid = 0b1111111111;
    for (int x = 0; x < size; x++)
    {
        int row_num = puzzle[x][c];
        int col_num = puzzle[r][x];
        // "clear bit"
        valid &= ~((1 << row_num) | (1 << col_num));
    }

    int first_r = rowCheck[2 * r];
    int second_r = rowCheck[2 * r + 1];
    int first_c = rowCheck[2 * c];
    int second_c = rowCheck[2 * c + 1];

    int bn1 = puzzle[first_r][first_c];
    int bn2 = puzzle[second_r][first_c];
    int bn3 = puzzle[first_r][second_c];
    int bn4 = puzzle[second_r][second_c];
    valid &= ~((1 << bn1) | (1 << bn2) | (1 << bn3) | (1 << bn4));

    for (int i = 1; i < 10; i++)
    {
        int bitAtI = (valid & (1 << i)) >> i;
        if (bitAtI)
        {
            puzzle[r][c] = i;
            // essentially, this passes the board along, with [r][c] set &
            if (solve_board(puzzle, emptyBoxes, curr_loc - 1))
            {
                return true;
            }
        }
    }

    puzzle[r][c] = 0;
    return false;
}

int main()
{
    std::cout << "Unsolved Sudoku Board:\n";
    printSudokuBoard();

    auto start = chrono::high_resolution_clock::now();

    int emptyBoxes[empty_size];
    int boardSize = getEmptyBoxes(sudoku_board, emptyBoxes);
    solve_board(sudoku_board, emptyBoxes, boardSize - 1);

    auto end = chrono::high_resolution_clock::now();

    std::cout
        << "\nSolved Sudoku Board:\n";
    printSudokuBoard();

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    cout << "Time taken:  " << duration / 1000.0 << " micros" << endl;

    return 0;
}
