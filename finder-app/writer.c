#include <stdio.h>
#include <syslog.h>
int main(int argc, char* argv[])
{
    openlog(NULL, 0, LOG_USER);
    if (argc != 3) {
        syslog(LOG_ERR, "Invalid number of arguments: %d", argc);
        return 1;    
    } else {
        FILE *fs;

        fs = fopen(argv[1], "w");
        if (!fs) {
            syslog(LOG_ERR, "Could not open file %s for write", argv[1]);
            return 1;
        } else {
            syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
            fprintf(fs, "%s", argv[2]);
            fclose(fs);
            return 0;
        }
    }
}
