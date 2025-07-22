{
  "0.0" = {
    sha256 = "855be0af616c75d30bf36939382ca5f6e6a1aeee0145e17c5a0e087193ab5a32";
    revisions = {
      r0 = {
        nix = import ../hackage/yap-0.0-r0-fc8903286bc21ffa05e73ac7cf07d24f187d8889ba28a71dd14825239b324bd3.nix;
        revNum = 0;
        sha256 = "fc8903286bc21ffa05e73ac7cf07d24f187d8889ba28a71dd14825239b324bd3";
      };
      default = "r0";
    };
  };
  "0.1" = {
    sha256 = "1406cf020cc7bc964f9509caa04d2928d20a76d73302af0bc62991556ff9a193";
    revisions = {
      r0 = {
        nix = import ../hackage/yap-0.1-r0-4f6c27ac720c45988840fe61bab2bab580400d43f7a542b978f5ddb3e3e62889.nix;
        revNum = 0;
        sha256 = "4f6c27ac720c45988840fe61bab2bab580400d43f7a542b978f5ddb3e3e62889";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "d18417aca635b9806f437c9476a80fa7633463185b06ff6e28ce3e2813299892";
    revisions = {
      r0 = {
        nix = import ../hackage/yap-0.2-r0-e9cda68712176486344e6e41424c592951d580234758b67ea73282435414758a.nix;
        revNum = 0;
        sha256 = "e9cda68712176486344e6e41424c592951d580234758b67ea73282435414758a";
      };
      r1 = {
        nix = import ../hackage/yap-0.2-r1-bb2cde5b094d85c7bd7b2fa9e329f07c12fc482157d59f81a3f3188fedeb0513.nix;
        revNum = 1;
        sha256 = "bb2cde5b094d85c7bd7b2fa9e329f07c12fc482157d59f81a3f3188fedeb0513";
      };
      default = "r1";
    };
  };
  "0.3.0" = {
    sha256 = "62bfbe024ec72d02a3dbdad4368b139f40d8f6d61bf40e3bf43b4755b317cadc";
    revisions = {
      r0 = {
        nix = import ../hackage/yap-0.3.0-r0-da9310d068c767d8a3fcc5ce60a414541fe24258613d0212bc0858dc8fb06c37.nix;
        revNum = 0;
        sha256 = "da9310d068c767d8a3fcc5ce60a414541fe24258613d0212bc0858dc8fb06c37";
      };
      default = "r0";
    };
  };
}