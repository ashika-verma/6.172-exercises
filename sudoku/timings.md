## Sudoku
- initial speed: ~565ms
- with compiler flag -O3, 148ms
- with bitset instead of set, 129ms
- pass reference of puzzle (&puzzle) - 113ms
- pass locations as ref (&locations) - 59ms
- pass index of locations instead of making new locations vector each time- 2.237ms