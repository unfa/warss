# warss
Wrapper script for ARSS (Analysis & Resynthesis Sound Spectrograph).

[ARSS](http://arss.sourceforge.net/) is one of a very few only open-source pieces of software that will let you generate sound based on a spectrogram (image).

Other two I know of are:
- https://www.coppercloudmusic.com/enscribe/
- https://github.com/plurSKI/imageSpectrogram/blob/master/imageSpectrogram.pl

ARSS is pretty neat, but the issue is - usage of this software is not trivial. I have created this script to make it easier for myself, and decided to share it.

## Dependancies

- ARSS - download binaries or compile the program yourself (it's a single C file): http://arss.sourceforge.net/download.shtml
- ImageMagick - most Linux distributions will come with it preinstalled, or available in software repositories. This is used to convert any image file you may provide into a format that ARSS will read (as it's only supporting a very specific variant of BMP images).

## Usage

1. Drop the `arss` binary and `warss.sh` into the same directory as your image file to process
2. Run the script:
  ```
  ./warss.sh image.png
  ```
  This will create an audio file `image.png.wav` based on your input.

I am providing sane defaults that result in good quality and fast processing, if you want to tune the synthesis parameters, reference ARSS help:

```
./arss --help
```

This will give you the following:


> The Analysis & Resynthesis Sound Spectrograph 0.2.3
> Usage: arss [options] input_file output_file [options]. Example:
> 
> arss -q in.bmp out.wav --noise --min-freq 55 -max 16000 --pps 100 -r 44100 -f 16
> 
> --help, -h, /?                Display this help
> --adv-help                    Display more advanced options
> --version, -v                 Display the version of this program
> --quiet, -q                   No-prompt mode. Useful for scripting
> --analysis, -a                Analysis mode. Not req. if input file is a .wav
> --sine, -s                    Sine synthesis mode
> --noise, -n                   Noise synthesis mode
> --min-freq, -min [real]       Minimum frequency in Hertz
> --max-freq, -max [real]       Maximum frequency in Hertz
> --bpo, -b [real]              Frequency resolution in Bands Per Octave
> --pps, -p [real]              Time resolution in Pixels Per Second
> --height, -y [integer]        Specifies the desired height of the spectrogram
> --width, -x [integer]         Specifies the desired width of the spectrogram
> --sample-rate, -r [integer]   Sample rate of the output sound
> --brightness, -g [real]       Almost like gamma : f(x) = x^1/brightness
> --format-param, -f [integer]  Output format option. This is bit-depth for WAV files (8/16/32, default: 32). No option for BMP files.

You can read more on the project's website:
http://arss.sourceforge.net/doc.shtml
