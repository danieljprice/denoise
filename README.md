# denoise
Command-line tool to remove shot noise from astronomical images and cubes.

## Install
```
brew tap danieljprice/all
brew install denoise
```

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

## Installing from source
To compile denoise from source you will need a Fortran compiler (gfortran)
and the cfitsio library. Then compile denoise as follows:
```
git clone --recurse-submodules https://github.com/danieljprice/denoise
export SYSTEM=gfortran
make
make install
```

If you need to specify the path to the cfitsio library, either set LD_LIBRARY_FLAGS, or the FITS_DIR environment variable to the location where the file libcfitsio.so can be found, e.g.
```
make FITS_DIR=$HOME/lib
```

## Examples

MWC758 with VLT-SPHERE, from [Benisty et al. (2015)](http://adsabs.harvard.edu/abs/2015A%26A...578L...6B), before (left) and after (right) denoising
![MWC758, from Benisty et al. (2015), before (left) and after (right) denoising](https://user-images.githubusercontent.com/12252103/90716905-6ce27e80-e2f1-11ea-960f-8c0bb1a61a44.png)

UX Tau with VLT-SPHERE, from [Ménard et al. (2020)](https://ui.adsabs.harvard.edu/abs/2020A&A...639L...1M), before and after
![UX Tau, from Ménard et al. (2020), before and after](https://user-images.githubusercontent.com/12252103/90717059-f4c88880-e2f1-11ea-9be8-fc002280c90f.png)

HD97048 with ALMA (mm/radio image), from [Pinte et al. (2019)](https://ui.adsabs.harvard.edu/abs/2019NatAs...3.1109P):
![HD97048, from Pinte et al. (2019)](https://user-images.githubusercontent.com/12252103/90717421-e6c73780-e2f2-11ea-94df-7f6a55ebc5fa.png)

## About this repo
Denoise is officially part of splash (https://github.com/danieljprice/splash). This repository is a standalone version of denoise that is updated with each stable release of splash that affects the relevant source files. Pull requests to this repo will also be incorporated back into the main splash source code.
