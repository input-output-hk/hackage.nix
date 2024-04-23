{
  "12.1.0" = {
    sha256 = "6781e7fd8fd990f744e6f2f4fb7350af3c4f86bf597bf697713cae63fd7bab55";
    revisions = {
      r0 = {
        nix = import ../hackage/llvm-party-12.1.0-r0-8512c5e6741680775417a806fd45c2a06e0947f845cdb194adfd7efceaf0db32.nix;
        revNum = 0;
        sha256 = "8512c5e6741680775417a806fd45c2a06e0947f845cdb194adfd7efceaf0db32";
      };
      default = "r0";
    };
  };
  "12.1.1" = {
    sha256 = "893d749d32b71a5fc8e26da57961d30fa77b4f929912ff305caf8abfdebf56bf";
    revisions = {
      r0 = {
        nix = import ../hackage/llvm-party-12.1.1-r0-ca2c88a7984b9703f1519156e2f2cb36c4fd7dfc06139c3d807e24a6e1e993c0.nix;
        revNum = 0;
        sha256 = "ca2c88a7984b9703f1519156e2f2cb36c4fd7dfc06139c3d807e24a6e1e993c0";
      };
      default = "r0";
    };
  };
}