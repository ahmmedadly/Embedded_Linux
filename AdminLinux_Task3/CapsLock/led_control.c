#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char *argv[])
{
    // Check if an argument is provided
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <0|1>\n", argv[0]);
        fprintf(stderr, "0 = Turn off Caps Lock LED\n");
        fprintf(stderr, "1 = Turn on Caps Lock LED\n");
        return 1;
    }

    // Validate input is either 0 or 1
    if (argv[1][0] != '0' && argv[1][0] != '1') {
        fprintf(stderr, "Error: Argument must be 0 or 1\n");
        return 1;
    }

    // Open the LED brightness file
    int fd = open("/sys/class/leds/input2::capslock/brightness", O_WRONLY);
    if (fd == -1) {
        perror("Error opening LED brightness file");
        return 1;
    }

    // Write the brightness value
    ssize_t bytes_written = write(fd, argv[1], 1);
    if (bytes_written != 1) {
        perror("Error writing to LED brightness file");
        close(fd);
        return 1;
    }

    // Close the file descriptor
    close(fd);

    printf("Caps Lock LED set to %s\n", argv[1]);
    return 0;
}
