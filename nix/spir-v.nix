{
  "0.0.0.1" = {
    sha256 = "37adf3770eb6a6162cd0b3395d15c88c3f501d0bf6e089ea7d93b48602d95fa9";
    revisions = {
      r0 = {
        nix = import ../hackage/spir-v-0.0.0.1-r0-6a597d09a19f97bf1f0f0f8183d56f4f6a71890e3a6144c1a73f621c69189bd0.nix;
        revNum = 0;
        sha256 = "6a597d09a19f97bf1f0f0f8183d56f4f6a71890e3a6144c1a73f621c69189bd0";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "6933c99a6e0ce0bb540884c76542b9f2d3095ca43718a0ca9475502f33f9262a";
    revisions = {
      r0 = {
        nix = import ../hackage/spir-v-0.0.0.2-r0-7684d736edf3b07751ec13fdae0eebd2882cfd2d8580d0a347070c30f723a02e.nix;
        revNum = 0;
        sha256 = "7684d736edf3b07751ec13fdae0eebd2882cfd2d8580d0a347070c30f723a02e";
      };
      r1 = {
        nix = import ../hackage/spir-v-0.0.0.2-r1-71fa7971fad8f2ce6d0eab96c2e817235822e5e0e048a844ac1288d35dee278f.nix;
        revNum = 1;
        sha256 = "71fa7971fad8f2ce6d0eab96c2e817235822e5e0e048a844ac1288d35dee278f";
      };
      default = "r1";
    };
  };
  "0.0.1.0" = {
    sha256 = "59d7b176ddafbb73aff8dd4b1a8f9557f748728e4f5262a9575108ff6e62d6ca";
    revisions = {
      r0 = {
        nix = import ../hackage/spir-v-0.0.1.0-r0-abdc223cd4a183e48cd0a47c22c9334f53056fdf69f25419a51df7060583fa69.nix;
        revNum = 0;
        sha256 = "abdc223cd4a183e48cd0a47c22c9334f53056fdf69f25419a51df7060583fa69";
      };
      r1 = {
        nix = import ../hackage/spir-v-0.0.1.0-r1-e123a9b98ac5461ebbfa037d6b8eca12ccd3a3466a674ddfc5f11e8eff8ec09f.nix;
        revNum = 1;
        sha256 = "e123a9b98ac5461ebbfa037d6b8eca12ccd3a3466a674ddfc5f11e8eff8ec09f";
      };
      default = "r1";
    };
  };
}