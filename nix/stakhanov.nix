{
  "0.0.1.0" = {
    sha256 = "b3a7cda6ff75dfc6615aadc1e1c2d571fc09f2682a45007f0fa8aeadac3526ed";
    revisions = {
      r0 = {
        nix = import ../hackage/stakhanov-0.0.1.0-r0-9c6ca934ef908d44a7b5d243568ec74f9ea0c700972a68339238950f6c87efda.nix;
        revNum = 0;
        sha256 = "9c6ca934ef908d44a7b5d243568ec74f9ea0c700972a68339238950f6c87efda";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "ad9bbf5df6f143bcf0b74e121f9be7af0d6f5d2d35dc7eccc5b2c3d3afedeeed";
    revisions = {
      r0 = {
        nix = import ../hackage/stakhanov-0.1.0.0-r0-fc6182a1bb4bb8364c5f9a0de997019cf2a36caa21385f29af09c890e0f1255f.nix;
        revNum = 0;
        sha256 = "fc6182a1bb4bb8364c5f9a0de997019cf2a36caa21385f29af09c890e0f1255f";
      };
      default = "r0";
    };
  };
}