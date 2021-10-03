# Android-Workflow-Tools

Repository with workflows that run on GitHub Workflows intended to make (my) life easier. This has just one tool right now, I might add more later.

## General instructions

1. Fork this repo
2. Make sure you go to actions tab and enable workflow actions
3. Make the changes as per instructions (read below) for the respective tool.

## Note

* Create an issue or Pull Request if you feel there is an issue or you want something added


## Tool to extract `system/build.prop`

When you want to get props from the ROM (like build DateTime for stuff like OTA), you can do it without having to flash it and get the props manually. All you need is an indexed link to your file (GDrive links won't, unless indexed). 

### Instructions

1. Edit the wget command in `extract_build_prop/download.sh` with the Download link to your ROM
2. Edit the export `export IS_DYNAMIC=` command in `extract_build_prop/download.sh` depending on your device 
3. Commit & Push your changes 
4. You should notice a workflow would have been triggered. 
5. Go to the Actions tab
6. Check the status of your build.
    * If it is green, you are good to go, successful run
    * If it is red, you have messed up something, check again, unsuccessful run
    * If it is yellow, wait for a while until it finishes the build
7. Wait for the build to complete
8. Open the corresponding workflow run, click on `extract_prop` and select the step `show` which contains the buildprop for the ROM. 

### Note 
* Must be a recovery ROM
* Works with MIUI too

