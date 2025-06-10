{
  "0.1.0.0" = {
    sha256 = "5bebe98e2b3f99c0f06cb22199cec74895bf7298bf43496d811756fb353f91ff";
    revisions = {
      r0 = {
        nix = import ../hackage/data-debruijn-0.1.0.0-r0-adb697ad45fd359cfd2cae1db769b4a192b629fad3612a24c12734cae5c35dfe.nix;
        revNum = 0;
        sha256 = "adb697ad45fd359cfd2cae1db769b4a192b629fad3612a24c12734cae5c35dfe";
      };
      r1 = {
        nix = import ../hackage/data-debruijn-0.1.0.0-r1-793223b64cfff1c75d02a1c75a21631751bafa405fcc27384f925bf0483d4cda.nix;
        revNum = 1;
        sha256 = "793223b64cfff1c75d02a1c75a21631751bafa405fcc27384f925bf0483d4cda";
      };
      default = "r1";
    };
  };
}