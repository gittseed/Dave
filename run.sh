
# This assumes you have installed SDL2 and SDL_Image libraries on your system
# Adjust the paths accordingly if needed

# exit script at first error
set -u -e

# Compile the C code and output to an executable called 'app'
clang -std=c11 LEVEL.c TILES.c -I/Library/Frameworks/SDL2.framework/Headers -I/Library/Frameworks/SDL2_image.framework/Headers -F/Library/Frameworks -framework SDL2 -framework SDL2_image -o app

# runs the app
./app
 