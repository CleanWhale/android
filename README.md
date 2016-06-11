# Clean Whale #

## Setup your build enivornment & sync our source ##

To setup your build enivornment and sync CW, please follow this guide [HERE](https://raw.githubusercontent.com/nathanchance/Android-Tools/master/Building_AOSP.txt)

---

# FAQ #

### Q: "wtf is 'Clean Whale'? Is it a sex thing?" ###

#### A: Close! ####

Clean Whale is a ROM for the Google (Motorola) Nexus 6 (shamu)! I came up with the name because it's essentially pure AOSP running on the Nexus 6. Clean Android, Nexus 6. Clean Whale.

### Q: Okay so features? ###

#### A: None! ####

Yeah, no features. Zip. Zilch. Zero. Nada. This CW is 100% AOSP with minimal changes, and those changes are to fix issues and/or compatibility concerns. It will never have features beyond what Google adds to the source code.

### Q: Wait, this is just AOSP? Couldn't I just compile it straight from Google instead of here? ###

#### A: Yes, but straight AOSP from Google's repos tends to have issues. ####

CleanWhale fixes those. For example, Google provides Vendor blobs (drivers) for all of the Nexus devices, but they miss some of the files. This stops the phone from working correctly once booted. For example, the Nexus 6 will fail to see the SIM card if you build and run straight from Google. CW has the full blobs needed for a functioning device!

### Q: Is this going to be maintained and updated with Google source? ###

#### A: Yes, but updates might be slow because I'm a noob. ####

Clean Whale is my first experience working with Android source code. This is a learning experience for me, so I may be missing some important things, I may mess some things up, and I could also completely break this.

### Q: Android N? ###

#### A: That'd be nice, so maybe. ####

I'd like to provide a pure Android N ROM for the Nexus 6, but I'm not sure if I will (or will be able to). Once I know, you'll know.
