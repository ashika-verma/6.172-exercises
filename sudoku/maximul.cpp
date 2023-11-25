#include <iostream>
#include <vector>
#include <map>
#include <set>
using namespace std;

class Solution
{
public:
    int maximalNetworkRank(int n, vector<vector<int>> &roads)
    {

        // first thought is brute force!

        map<int, vector<int>> city_to_cities;
        // 1) find every pair of cities/nodes
        // represent pairs at {a,b}
        vector<vector<int>> pairs;
        for (int i = 0; i < n; i++)
        {
            for (int j = i + 1; j < n; j++)
            {
                // append to list
                vector<int> pair = {i, j};
                pairs.push_back(pair);
            }
            city_to_cities[n] = {};
            cout << 'n' << n << " " << city_to_cities.at(n) << endl;
        }

        // 2) for each pair, calculate network rank
        //  dumb way, go through every possible road,
        //  check if is owned by both, one or the other.
        // let's first make a mapping of cities to their respective roads.
        for (vector<int> &road : roads)
        {

            const int city_1 = road.at(0);
            const int city_2 = road.at(1);
            cout << city_1 << " <-- city 1, city 2 -->" << city_2 << endl;
            city_to_cities[city_1].push_back(city_2);
            city_to_cities[city_2].push_back(city_1);
        }

        int max_size = 0;
        // for each pair, find the set of cities!
        for (auto &x : pairs)
        {
            int c1 = x.at(0);
            int c2 = x.at(1);
            cout << c1 << ", " << c2 << endl;
            vector<int> cities_from_c1 = city_to_cities.at(c1);
            vector<int> cities_from_c2 = city_to_cities.at(c2);
            set<int> combined;
            for (int &i : cities_from_c1)
            {
                combined.insert(i);
            }

            for (int &i : cities_from_c2)
            {
                combined.insert(i);
            }
            int combined_size = combined.size();
            max_size = combined_size > max_size ? combined_size : max_size;
        }

        // 3) return the max!

        return max_size;
    }
};

int main()
{
    Solution test;

    vector<vector<int>> roads{};
    // vector<vector<int>> roads{
    //     {0, 1}, {0, 3}, {1, 2}, {1, 3}};
    cout << test.maximalNetworkRank(4, roads);
    return 0;
}