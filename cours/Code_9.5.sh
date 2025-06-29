gcc -o square square_assert.c
./square
gcc -DNDEBUG -o square square_assert.c
./square
