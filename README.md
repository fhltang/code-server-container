# VS Code in Browser

This takes updated commands from [How to run Visual Studio Code in Google Cloud Shell](https://medium.com/google-cloud/how-to-run-visual-studio-code-in-google-cloud-shell-354d125d5748) and wraps it in a container.

## Usage

[How to run Visual Studio Code in Google Cloud Shell](https://medium.com/google-cloud/how-to-run-visual-studio-code-in-google-cloud-shell-354d125d5748) has useful screenshots.

Start a Google Cloud Shell. Enable Boost Mode to get more ram and cores.

Build `code-server` container image:

    docker build -t code-server https://github.com/fhltang/code-server-container.git

Run container:

    docker run -d -p 8080:8080 -v $(pwd):/files code-server

Select "Preview on port 8080" in Cloud Shell.

The files in your Cloud Shell are available in `/files` (as specified by the `-v` argument to `docker run`).