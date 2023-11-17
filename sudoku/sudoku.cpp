#include <iostream>
#include <vector>
#include <set>
#include <chrono>
using namespace std;

constexpr int size = 9;

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

// take a pointer to the puzzle, & x

vector<vector<int>> getEmptyBoxes(int puzzle[size][size])
{
    vector<vector<int>> empty_boxes;
    for (int i = 0; i < size; i++)
    {

        for (int j = 0; j < size; j++)
        {
            if (puzzle[i][j] == 0)
            {
                empty_boxes.push_back({i, j});
            }
        }
    }

    return empty_boxes;
}

set<int> get_valid_numbers(const int puzzle[size][size], const vector<int> &location)
{
    int row = location[0];
    int col = location[1];

    set<int> nums_in_adj = {};

    // try the col
    for (int x = 0; x < size; x++)
    {
        int row_num = puzzle[x][col];
        int col_num = puzzle[row][x];
        nums_in_adj.insert(row_num);
        nums_in_adj.insert(col_num);
    }

    int box_r = row / 3;
    int box_c = col / 3;

    for (int r = box_r * 3; r < 3 * box_r + 3; r++)
    {
        for (int c = box_c * 3; c < 3 * box_c + 3; c++)
        {
            if (puzzle[r][c] != 0)
            {
                nums_in_adj.insert(puzzle[r][c]);
            }
        }
    }

    set<int> nums_to_try = {1, 2, 3, 4, 5, 6, 7, 8, 9};

    for (auto &x : nums_in_adj)
    {
        if (nums_to_try.find(x) != nums_to_try.end())
        {
            nums_to_try.erase(x);
        }
    }

    return nums_to_try;
}

bool solve_board(int puzzle[size][size], vector<vector<int>> locations)
{

    if (locations.size() == 0)
    {
        return true;
    }

    const vector<int> location = locations[0];
    int r = location[0];
    int c = location[1];

    set<int> valid_nums = get_valid_numbers(puzzle, location);
    if (valid_nums.size() == 0)
    {
        return false;
    }

    vector<vector<int>> rest(locations.begin() + 1, locations.end());

    for (int valid_num : valid_nums)
    {
        puzzle[r][c] = valid_num;
        if (solve_board(puzzle, rest))
        {
            return true;
        }
        puzzle[r][c] = 0;
    }

    return false;
}

int main()
{
    std::cout << "Unsolved Sudoku Board:\n";
    printSudokuBoard();

    auto start = chrono::high_resolution_clock::now();
    vector<vector<int>> empty_boxes = getEmptyBoxes(sudoku_board);
    set<int> nums = get_valid_numbers(sudoku_board, empty_boxes[0]);
    solve_board(sudoku_board, empty_boxes);
    auto end = chrono::high_resolution_clock::now();

    std::cout
        << "\nSolved Sudoku Board:\n";
    printSudokuBoard();

    auto duration = chrono::duration_cast<chrono::milliseconds>(end - start).count();
    cout << "Time taken:  " << duration << "ms" << endl;

    return 0;
}
