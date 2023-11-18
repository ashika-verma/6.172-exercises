#include <iostream>
#include <vector>
#include <chrono>
#include <bitset>
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

bitset<10> get_valid_numbers(const int puzzle[size][size], const vector<int> &location)
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

    int box_r = row / 3;
    int box_c = col / 3;

    for (int r = box_r * 3; r < 3 * box_r + 3; r++)
    {
        for (int c = box_c * 3; c < 3 * box_c + 3; c++)
        {
            invalid_nums.set(puzzle[r][c]);
        }
    }
    return invalid_nums;
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

    bitset<10> valid_nums = get_valid_numbers(puzzle, location);
    if (valid_nums.size() == 0)
    {
        return false;
    }

    vector<vector<int>> rest(locations.begin() + 1, locations.end());

    for (int i = 1; i < 10; i++)
    {

        if (!valid_nums[i])
        {
            puzzle[r][c] = i;
            if (solve_board(puzzle, rest))
            {
                return true;
            }
            puzzle[r][c] = 0;
        }
    }

    return false;
}

int main()
{
    std::cout << "Unsolved Sudoku Board:\n";
    printSudokuBoard();

    auto start = chrono::high_resolution_clock::now();
    vector<vector<int>> empty_boxes = getEmptyBoxes(sudoku_board);
    solve_board(sudoku_board, empty_boxes);
    auto end = chrono::high_resolution_clock::now();

    std::cout
        << "\nSolved Sudoku Board:\n";
    printSudokuBoard();

    auto duration = chrono::duration_cast<chrono::milliseconds>(end - start).count();
    cout << "Time taken:  " << duration << "ms" << endl;

    return 0;
}
