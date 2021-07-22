#!/bin/bash -l

OUTPUT_DIR="output_files"
INPUT_DIR="input_files"
# run c program
gcc cannonsim.cpp -o cannonsim -lm
./cannonsim -i $INPUT_DIR -o $OUTPUT_DIR

# run python program
python cannonsim.py --input_dir $INPUT_DIR --output_dir $OUTPUT_DIR


# run java program
export CLASSPATH="java_libs/commons-cli-1.3.1.jar:."
javac cannonsim.java
java cannonsim --input_dir $INPUT_DIR --output_dir $OUTPUT_DIR


echo -e "\n\nPython program outputs:"
cat $OUTPUT_DIR/py_output.txt

echo -e "\n\nC program outputs:"
cat $OUTPUT_DIR/c_output.txt

echo -e "\n\nJava program outputs:"
cat $OUTPUT_DIR/java_output.txt

echo -e "\n\nDONE..."
