#include <iostream>
#include <chrono>
#include <bitset>
#include <stack>
using namespace std;

constexpr int size = 9;

constexpr int lookupTable[size] = {0, 0, 0, 3, 3, 3, 6, 6, 6};

constexpr int rowCheck[9][2] = {{1, 2}, {0, 2}, {0, 1}, {4, 5}, {3, 5}, {3, 4}, {7, 8}, {6, 8}, {6, 7}};

int sudoku_board[size][size] = {
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
            std::cout << sudoku_board[i][j] << " ";
        }
        std::cout << "\n";
    }
}

constexpr int empty_size = size * size * 2;
struct boardDesc
{
    int doubledSize;            // tells you when we get to the end of empty boxes
    int emptyBoxes[empty_size]; // interleaved [r_1, c_1, r_2, c_2]
};

boardDesc getEmptyBoxes(const int (&puzzle)[size][size])
{
    struct boardDesc board;
    int counter = 0;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
        {
            if (puzzle[i][j] == 0)
            {
                board.emptyBoxes[counter] = i;
                board.emptyBoxes[counter + 1] = j;
                counter += 2;
            }
        }
    }
    board.doubledSize = counter;
    return board;
}

bool solve_board(int (&puzzle)[size][size], boardDesc &board, const int curr_loc)
{

    if (board.doubledSize == curr_loc)
    {
        return true;
    }

    int r = board.emptyBoxes[curr_loc];
    int c = board.emptyBoxes[curr_loc + 1];

    int valid = 0b1111111111;
    // try the col
    for (int x = 0; x < size; x++)
    {
        int row_num = puzzle[x][c];
        int col_num = puzzle[r][x];
        // "clear bit"
        valid = valid & ~(1 << row_num);
        valid = valid & ~(1 << col_num);
    }

    int first_r = rowCheck[r][0];
    int second_r = rowCheck[r][1];
    int first_c = rowCheck[c][0];
    int second_c = rowCheck[c][1];

    int box_num = puzzle[first_r][first_c];
    valid = valid & ~(1 << box_num);
    box_num = puzzle[second_r][first_c];
    valid = valid & ~(1 << box_num);
    box_num = puzzle[first_r][second_c];
    valid = valid & ~(1 << box_num);
    box_num = puzzle[second_r][second_c];
    valid = valid & ~(1 << box_num);

    for (int i = 1; i < 10; i++)
    {
        int bitAtI = (valid & (1 << i)) >> i;
        if (bitAtI)
        {
            puzzle[r][c] = i;
            // essentially, this passes the board along, with [r][c] set &
            if (solve_board(puzzle, board, curr_loc + 2))
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
    boardDesc board = getEmptyBoxes(sudoku_board);
    // solve_board(sudoku_board, board, 0);
    solve_board(sudoku_board, board, 0);
    auto end = chrono::high_resolution_clock::now();

    std::cout
        << "\nSolved Sudoku Board:\n";
    printSudokuBoard();

    auto duration = chrono::duration_cast<chrono::microseconds>(end - start).count();
    cout << "Time taken:  " << duration / 1000.0 << "ms" << endl;

    return 0;
}
