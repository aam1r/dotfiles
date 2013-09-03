import os
import shutil

from os.path import expanduser

DESTINATION = expanduser("~")
EXCLUDED = [".git", ".DS_Store", "bootstrap.py", "README.md"]

def copy_files():
    for src in os.listdir('.'):
        if src in EXCLUDED:
            continue

        dst = DESTINATION + "/." + src

        if os.path.isdir(src):
            if os.path.exists(dst):
                shutil.rmtree(dst)

            shutil.copytree(src, dst)
        else:
            shutil.copy2(src, dst)

if __name__ == "__main__":
    print "This will overwrite existing files in your home directory. Are you sure? (y/n)"

    choice = raw_input().lower()

    if choice == 'y':
        print "Copying files..."
        copy_files()
    else:
        print "Quitting..."
