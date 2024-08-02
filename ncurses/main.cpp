#include <ncurses.h>
#include <cstring>

int main() {
    // Initialize ncurses
    initscr();          // Start curses mode
    cbreak();           // Line buffering disabled
    noecho();           // Don't echo input

    // Get screen dimensions
    int height, width;
    getmaxyx(stdscr, height, width);

    // Print "Hello, World!" in the center of the screen
    const char* message = "Hello, World!";
    int x = (width - strlen(message)) / 2;
    int y = height / 2;
    mvprintw(y, x, "%s", message);

    // Refresh to show changes
    refresh();

    // Wait for user input before exiting
    getch();

    // End ncurses mode
    endwin();

    return 0;
}

