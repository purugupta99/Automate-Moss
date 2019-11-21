# Steps to Moss Automator
- run `` for f in *; do mv "$f" `echo $f | tr ' ' '_'`; done`` to replace ' ' with '_'
- run `bash extract.sh` in the directory with the archive files
- Cut and paste the extracted files from previous directory to a new directory say "Extracted"
- create a directory "codes" in the root
- run `bash concatenator_c_h.sh` in the directory with the extracts "Extracted"
- The files will be generated in the "codes" directory
