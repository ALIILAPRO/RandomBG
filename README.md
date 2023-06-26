# RandomBG

RandomBG is a script that generates a random 16-character code and sets a corresponding random photo as the desktop background. The script uses PowerShell to download an image from the website "https://picsum.photos/" and sets it as the desktop background using system parameters. This project is designed to add some fun and variety to your desktop background, with a unique code generated each time the script is run.

## Installation

To use RandomBG, follow these steps:

1. Download the `randombg.bat` file from this [repository](https://github.com/ALIILAPRO/RandomBG/blob/main/randombg.bat).
2. Double-click the `randombg.bat` file to run the script.
3. Wait for the script to download and set the background image.

## Customization

- To change the length of the code generated, modify the `FOR /L %%b IN (0, 1, 16)` line to include your desired code length, replacing `16` with your chosen number.
- To change the size of the downloaded image, modify the URL in the `Invoke-WebRequest` command to include your desired dimensions, replacing `1920/1080` with your chosen width and height.
- To specify a different folder to save the downloaded image to, change the `folder` variable to include your desired path.

## Contributing

If you have suggestions for how RandomBG could be improved, or want to report a bug, please submit an issue on GitHub. You may also fork and clone the repository to make changes to the project yourself.

## License

This project is licensed under the [GNU General Public License v3.0](https://github.com/ALIILAPRO/RandomBG/blob/main/LICENSE).
