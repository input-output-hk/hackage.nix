{
  "1.0" = {
    sha256 = "02064a6bcb02704eca4da68a4e2562793976b43130a316351f708d463c625dda";
    revisions = {
      r0 = {
        nix = import ../hackage/iterable-1.0-r0-9a500514dee807dde61af57ee7e7f8b64df1166a39bd1c1cbb4dfa585a4b0ba7.nix;
        revNum = 0;
        sha256 = "9a500514dee807dde61af57ee7e7f8b64df1166a39bd1c1cbb4dfa585a4b0ba7";
        };
      r1 = {
        nix = import ../hackage/iterable-1.0-r1-8a3aa8fcbd97be05afaa3238a74e0efd39309caf3a85e8ea738aa881ca884bba.nix;
        revNum = 1;
        sha256 = "8a3aa8fcbd97be05afaa3238a74e0efd39309caf3a85e8ea738aa881ca884bba";
        };
      default = "r1";
      };
    };
  "2.0" = {
    sha256 = "59ee07890384ce41fc250c37e2e6e4e8f3b1f5efb88b5d4a2b676c182e62f454";
    revisions = {
      r0 = {
        nix = import ../hackage/iterable-2.0-r0-89465ea1b6891a2341396a31c80f8cd6100ed274ccf803a95bbc348f1db39839.nix;
        revNum = 0;
        sha256 = "89465ea1b6891a2341396a31c80f8cd6100ed274ccf803a95bbc348f1db39839";
        };
      r1 = {
        nix = import ../hackage/iterable-2.0-r1-b945598e77e57d84429babf967ebb94630d4c08727873da1469633c638b719d3.nix;
        revNum = 1;
        sha256 = "b945598e77e57d84429babf967ebb94630d4c08727873da1469633c638b719d3";
        };
      default = "r1";
      };
    };
  "3.0" = {
    sha256 = "6cd13d621144e937cc88acfed1663bd2e208dcbe54be4bad1f7b7279250a87a4";
    revisions = {
      r0 = {
        nix = import ../hackage/iterable-3.0-r0-1fbfc1f54fa3d605b17ce08469c71dc862eb35283b37b70e0e6ff7c903a95b87.nix;
        revNum = 0;
        sha256 = "1fbfc1f54fa3d605b17ce08469c71dc862eb35283b37b70e0e6ff7c903a95b87";
        };
      r1 = {
        nix = import ../hackage/iterable-3.0-r1-7a7b2b67c1dfb50b957431cec2e021af73a14a2e56a6a550841dd54a4ae95d29.nix;
        revNum = 1;
        sha256 = "7a7b2b67c1dfb50b957431cec2e021af73a14a2e56a6a550841dd54a4ae95d29";
        };
      default = "r1";
      };
    };
  }