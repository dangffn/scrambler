# Scrambler

This program scrambles (and unscrambles) images with an optional password.

## Setup

Install dependencies.

```bash
sudo apt install \
    libopencv-dev \
    libargparse-dev
```

Build.

```bash
make
```

## Basic Example

For the test image below:

![image](./test.jpg)

Run the following:

```bash
scrambler ./test.jpg -o test.scrambled.png
```

This will create a `./test.scrambled.png` image with all of the pixels scrambled seemingly randomly.

![image](./test.scrambled.png)

You can then run:

```bash
scrambler ./test.scrambled.png -u
```

Which will unscramble the image.

## CLI Usage

```bash
> ./scrambler --help 
Usage: scrambler [--help] [--version] [--password VAR] [--unscramble] [--output VAR] filename

Positional arguments:
  filename          path to an image file 

Optional arguments:
  -h, --help        shows help message and exits 
  -v, --version     prints version information and exits 
  -p, --password    the (optional) password to use to scramble the image [nargs=0..1] [default: ""]
  -u, --unscramble  If specified, unscramble the target image 
  -o, --output      path to save the resulting file to [nargs=0..1] [default: ""]
```