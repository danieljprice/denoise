# denoise
Command-line tool to remove shot noise from astronomical images and cubes.

## Usage
```
denoise image.fits [out.fits]
```

## Advanced usage
Type denoise with no arguments to see the command line options:
```
denoise: a SPLASH imaging utility (c) 2020 Daniel Price

Usage: denoise [options] infile.fits [outfile.fits]

Options:  --imax=3.4e-2     [intensity value above which no smoothing is applied]
          --beam=1.0        [beam size in pixels at max intensity]
          --its=4           [maximum number of smoothing length iterations]
          --use3D=1         [denoise in 3D for spectral cubes]
          --start=1         [denoise from channel 1 onwards]
          --end=10          [denoise only up to channel 10]
```
The main one is the --beam argument which sets the minimum beam size (in number of pixels). The default is beam=1.0 which gives no smoothing of the image at the maximum intensity.

## About this repo
Denoise is officially part of splash (https://github.com/danieljprice/splash). This repository is a standalone version of denoise that is updated with each stable release of splash that affects the relevant source files. Pull requests to this repo will also be incorporated back into the main splash source code.
