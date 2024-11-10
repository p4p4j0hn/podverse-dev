# Unofficial Podverse Development Environment

This repo is dedicated to helping you contribute to Podverse development.

## Getting Started

Make sure you have Docker and the VS Code devcontainer extension installed. The Visual Studio Code site has a guide on how to get started [here](https://code.visualstudio.com/docs/devcontainers/containers). Ensure you have `make` installed as well.

Once your machine is ready, clone the this repo including the submodules.
```bash
git clone --recurse-submodules https://github.com/p4p4j0hn/podverse-dev.git
```
Then initialize your environment files by running:
```bash
make local_validate_init
```
You will need to get a free API key from [api.podcastindex.org](https://api.podcastindex.org). Once you sign up and have your key you will need to set `PODCAST_INDEX_AUTH_KEY` and `PODCAST_INDEX_SECRET_KEY` in `./config/podverse-api-local.env` (down on lines 196 and 197).

## Front end development

To get started with developing the front end only, open the VS Code command palette and run `Dev Containers: Rebuild and Reopen in Container`. The containers will then get pulled, built, and configured. Then the npm packages will get installed. Podverse uses the yarn package manager so to start the dev server run `yarn dev`.

### Notes
- You can login using `premium@qa.podverse.fm`, password: `Test!1Aa`

TODO api development

TODO react-native development

TODO podverse module development
