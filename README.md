![SMB](/smb-bedrock.png)

# smb-bedrock
Super Mario Bros for Minecraft Bedrock Edition.


## Installation
1. Download the [mctemplate](https://github.com/kirbycope/smb-bedrock/raw/main/smb-bedrock.mctemplate)
1. Double-click the mctemplate file
1. Create a New World using the template
    - "Play" > "Create New"  > Scroll down to "Imported Templates" (Select "See More" if necessary)

## Releasing
Pushing a tag that starts with `v` (for example `git tag v1.0.0 && git push origin v1.0.0`) runs the Release workflow in `.github/workflows/release.yml`, which builds the world template and attaches `smb-bedrock.mctemplate` to a GitHub Release.

To build it locally, run `python tools/build_addon.py`. It writes `build/smb-bedrock.mctemplate`, which git ignores, and leaves the committed `smb-bedrock.mctemplate` as it is.
