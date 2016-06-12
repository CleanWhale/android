# Clean Whale #

## Setup your build enivornment & sync our source ##

To setup your build enivornment and sync CW, please follow this guide [HERE](https://raw.githubusercontent.com/CleanWhale/android/master/Docs/how_to_set_up_build_environment.txt)

### Documentation and Scripts ###

[You can find guides and some helpful scripts here!](https://github.com/CleanWhale/android/tree/master/Docs)

---

# FAQ #

### Q: "wtf is 'Clean Whale'? Is it a sex thing?" ###

#### A: Close! ####

Clean Whale is a ROM for the Google (Motorola) Nexus 6 (shamu)! Why the name? Because it's essentially pure AOSP running on the Nexus 6. Clean Android, Nexus 6. Clean Whale.

### Q: Okay so features? ###

#### A: None! ####

Yeah, no features. Zip. Zilch. Zero. Nada. This CW is 100% AOSP with minimal changes, and those changes are to fix issues and/or compatibility concerns. It will never have features beyond what Google adds to the source code.

### Q: Wait, this is just AOSP? Couldn't I just compile it straight from Google instead of here? ###

#### A: Yes, but straight AOSP from Google's repos tends to have issues. ####

Clean Whale fixes those. For example, Google provides Vendor blobs (drivers) for all of the Nexus devices, but they miss some of the files. This stops the phone from working correctly once booted. For example, the Nexus 6 will fail to see the SIM card if you build and run straight from Google. CW has the full blobs needed for a functioning device!

### Q: Is this going to be maintained and updated with Google source? ###

#### A: Yes, but updates might be slow. ####

Clean Whale is not a "professional" build of AOSP. Although the source comes from the stable branches of Google's
repos, builds may break simply because of noobish mistakes. This is a learning experience, so things may break.
