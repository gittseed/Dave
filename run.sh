

# In order to run this script, open a Terminal session
# to the same directory and type "chmod u+x comprun.sh"
# without the quotes once to update permissions. Then to
# run the script, from the same Terminal type "./comprun.sh"

# This assumes you have installed SDL2 and SDL_Image libraries on your system
# Adjust the paths accordingly if needed

# exit script at first error
set -u -e

# Compile the C code and output to an executable called 'app'
clang -std=c11 LEVEL.c TILES.c -I/Library/Frameworks/SDL2.framework/Headers -I/Library/Frameworks/SDL2_image.framework/Headers -F/Library/Frameworks -framework SDL2 -framework SDL2_image -o app

# runs the app
./app
 