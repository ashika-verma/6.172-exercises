#include <iostream>
#include <vector>
#include <chrono>
#include <bitset>
using namespace std;

constexpr int size = 9;

constexpr int lookupTable[size] = {0, 0, 0, 3, 3, 3, 6, 6, 6};

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
    int doubledSize;
    int emptyBoxes[empty_size];
};

boardDesc getEmptyBoxes(const int (&puzzle)[size][size])
{
    vector<vector<int>> empty_boxes;
    struct boardDesc board;
    empty_boxes.reserve(size * size * 2);
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
                empty_boxes.push_back({i, j});
            }
        }
    }
    board.doubledSize = counter;
    return board;
}

bitset<10> get_valid_numbers(const int (&puzzle)[size][size], const vector<int> &location)
{
    int row = location[0];
    int col = location[1];

    bitset<10> invalid_nums;

    // try the col
    for (int x = 0; x < size; x++)
    {
        int row_num = puzzle[x][col];
        int col_num = puzzle[row][x];
        invalid_nums.set(row_num);
        invalid_nums.set(col_num);
    }

    int box_r = lookupTable[row];
    int box_c = lookupTable[col];

    for (int r = box_r; r < box_r + 3; r++)
    {
        for (int c = box_c; c < box_c + 3; c++)
        {
            invalid_nums.set(puzzle[r][c]);
        }
    }
    return invalid_nums.flip();
}

bool solve_board(int (&puzzle)[size][size], boardDesc &board, const int curr_loc)
{

    if (board.doubledSize == curr_loc)
    {
        return true;
    }

    int r = board.emptyBoxes[curr_loc];
    int c = board.emptyBoxes[curr_loc + 1];

    bitset<10>
        valid_nums = get_valid_numbers(puzzle, {r, c});

    for (int i = 1; i < 10; i++)
    {

        if (valid_nums[i])
        {
            puzzle[r][c] = i;
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
    solve_board(sudoku_board, board, 0);
    auto end = chrono::high_resolution_clock::now();

    std::cout
        << "\nSolved Sudoku Board:\n";
    printSudokuBoard();

    auto duration = chrono::duration_cast<chrono::microseconds>(end - start).count();
    cout << "Time taken:  " << duration / 1000.0 << "ms" << endl;

    return 0;
}
