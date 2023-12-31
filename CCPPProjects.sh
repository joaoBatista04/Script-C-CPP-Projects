#CHECKING IF THE USER ENTERED THE CORRECT NUMBER OF FLAGS
if [ $# -ne 1 ]; then
    echo "Missing flag (-d to create and download files and -c to clean workspace)"
else
    #IF THE USER CHOSE TO CREATE THE PROJECT
    if [ "$1" = "-d" ] || [ "$1" = "-D" ]; then
        #REMOVING EXISTING FILES
        rm -rf ./**/
        rm -rf main.c
        rm -rf main.cpp
        rm -rf Makefile
        rm -rf main

        #CREATING INCLUDE FOLDER
        mkdir include
        mkdir ./include/domain
        mkdir ./include/util

        #CREATING SRC FOLDER
        mkdir src
        mkdir ./src/domain
        mkdir ./src/util

        #CREATING OUT FOLDER
        mkdir out

        #CREATING TEST FOLDER
        mkdir test

        #ASKING THE EXTENSION OF THE PROJECT AND CREATING THE MAIN FILE
        read -e -p "Your project will be written in .c or .cpp? [c/cpp] " CCPP

        if [ "$CCPP" = "c" ]; then
            touch main.c
        elif [ "$CCPP" = "cpp" ]; then
            touch main.cpp
        else
            echo "Unknown extension!"
        fi

        #DOWNLOADING THE UNIVERSAL MAKEFILE
        git clone https://github.com/joaoBatista04/Universal-Makefile
        cp ./Universal-Makefile/Makefile .
        rm -rf ./Universal-Makefile
    #IF THE USER CHOSE TO CLEAN THE WORKSPACE
    elif [ "$1" = "-c" ] || [ "$1" = "-C" ]; then
        rm -rf ./**/
        rm -rf main.c
        rm -rf main.cpp
        rm -rf Makefile
        rm -rf main
    #IF THE USER CHOSE AN UNKNOWN FLAG
    else
        echo "Unknown flag!"
    fi
fi