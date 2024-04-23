{
  "0.0.1.0" = {
    sha256 = "427e095a40747725116e08253aed44102e9d7807dfc3de2f2b868c00c0db408b";
    revisions = {
      r0 = {
        nix = import ../hackage/genesis-test-0.0.1.0-r0-7d6e4d053dcfb68fb1f7647f62a3f58fcd2df8af864f7f8eb3920c38f248e06e.nix;
        revNum = 0;
        sha256 = "7d6e4d053dcfb68fb1f7647f62a3f58fcd2df8af864f7f8eb3920c38f248e06e";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "045e29ab7c9b9e500deb1329e2d16e6ab453ab466ebb99f863a5f2b212e62335";
    revisions = {
      r0 = {
        nix = import ../hackage/genesis-test-0.1.0.0-r0-f1bab6e91845215345a83f3a0769ff1169a18c70e71b11c5869acd98e35275e1.nix;
        revNum = 0;
        sha256 = "f1bab6e91845215345a83f3a0769ff1169a18c70e71b11c5869acd98e35275e1";
      };
      default = "r0";
    };
  };
}