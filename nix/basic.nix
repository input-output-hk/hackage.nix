{
  "0.1.0.0" = {
    sha256 = "ebae012ada4d83470448430452d9215279ca86e2414080dbbc1a8b37af68338e";
    revisions = {
      r0 = {
        nix = import ../hackage/basic-0.1.0.0-r0-327130d900c40d99bbe96682362d60d6c43c8d27b8a6bcd44ba7da8b14dff57e.nix;
        revNum = 0;
        sha256 = "327130d900c40d99bbe96682362d60d6c43c8d27b8a6bcd44ba7da8b14dff57e";
      };
      r1 = {
        nix = import ../hackage/basic-0.1.0.0-r1-5394a85e04f5624ce123a38f0183e49125848f28fbfc683d4432e8b22664befd.nix;
        revNum = 1;
        sha256 = "5394a85e04f5624ce123a38f0183e49125848f28fbfc683d4432e8b22664befd";
      };
      r2 = {
        nix = import ../hackage/basic-0.1.0.0-r2-a90b6636f079ee7b7dd22f7551242ad0cb1e01f00d30cd3a45b6e74abce0b3ac.nix;
        revNum = 2;
        sha256 = "a90b6636f079ee7b7dd22f7551242ad0cb1e01f00d30cd3a45b6e74abce0b3ac";
      };
      default = "r2";
    };
  };
}