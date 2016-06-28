# embed.py

This python script is inspired by `xxd` and `hexdump`.

It provides a simple, cross platform way to print multiple files to an output file as a hexdump or a C header file.

## Usage

- First you want to either change directory to the same location as `embed.py`, or add `embed.py` to a location on your `$PATH` environment variable.
- Second, decide what to call your output file
- Third decide what files to include in the output
- Finally run the command:
  - **Note:** The `...` is **not** part of the command, and the `${files}` should be **replaced** with real file names!
```bash
# To generate a normal dump
embed.py -o ${out_file} ${in_file_1} ${in_file_2} ${in_file_3} ${in_file_4} ...

# To generate a C header file
embed.py -c -o ${out_file} ${in_file_1} ${in_file_2} ${in_file_3} ${in_file_4} ...
```

- From windows you can instead **replace "`embed.py`" with "`embed.bat`"**:
  - Or run using python like `python embedpy ...`
```dos
:: To generate a normal dump
embed.py -o %out_file% %in_file_1% %in_file_2% %in_file_3% %in_file_4% ...

:: To generate a C header file
embed.py -c -o %out_file% %in_file_1% %in_file_2% %in_file_3% %in_file_4% ...
```

## Help!

The full help can be accessed with the `-h` or `--help` switch:

```bash
python embed.py --help
```
```
usage: embed.py [-h] [-o [file]] [-a] [-c] [-n] [-l N] [-s style] [-v]
                file [file ...]

Creates a C file from the contents of each file. 
Files are embedded as variables named afer the file name.

positional arguments:
  file                  A file to be embedded

optional arguments:
  -h, --help            show this help message and exit
  -o [file], --out [file]
                        The name of the file to output into. (default:
                        out.dump)
  -a, --apend           Append into OutputFile (default: overrite origional)
  -c, --out-c           Generate a C file embedding as C strings. (changes
                        default -o to out.h)
  -n, --no-comment      Disables outputting readable line comments at the end
                        of each row (default: false)
  -l N, --length N      The number of bytes to write per line. (default: 10)
  -s style, --style style
                        Apply style to generated variable names. You may use
                        the most significant parts (e.g. 'u', 'up' or 'upper')
                        (default: no) Choices: uppercase, lowercase,
                        capitalize, no)
  -v, --version         show program's version number and exit

```