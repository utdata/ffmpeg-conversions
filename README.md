# ffmpeg conversions

## Requirements

Three packages used for processing, installed with [Homebrew](https://brew.sh/).

```
brew install ffmpeg
brew install imagemagick
brew install gifsicle
```

The scripts have some paths so they either need to be modified or save the repo in `Documents/scripts/ffmpeg-conversions`.

## bash profile

Add the following to your `.bash_profile` for one line processing. Don't forget to restart your shell.

```bash
# run mov conversion
alias conv_mp4="bash ~/Documents/scripts/ffmpeg-conversions/mp4.sh"
alias conv_gif="bash ~/Documents/scripts/ffmpeg-conversions/gif.sh"
alias conv_both="bash ~/Documents/scripts/ffmpeg-conversions/both.sh"
```

## How it works

I use the Mac's `command-5` screen capture tool, which saves an `.mov` file to my desktop. Move the resulting file or files into `01_in`.

When you run the command, it moves the original and resulting files into `02_out`.
