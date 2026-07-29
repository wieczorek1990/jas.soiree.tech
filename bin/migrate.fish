#!/usr/bin/env fish
# Mover for text files to markdown files.
set dir $argv[1]

cd $dir
for file in *.txt
    set name (basename "$file" .txt)
    set markdown "$name.md"
    echo "Moving $file to $markdown"
    mv "$file" "$markdown"
end
