{
  "0.1.0.0" = {
    sha256 = "e994f9e4014ae1cdd5f586bc912a1a7c5bff1aa1240c3fdf9ac1ef5cfde2a1f0";
    revisions = {
      r0 = {
        nix = import ../hackage/microecta-0.1.0.0-r0-380c01cf43db01a74966855f49faf1ab9e5c031cb1973ccab5f7f677a5a78aac.nix;
        revNum = 0;
        sha256 = "380c01cf43db01a74966855f49faf1ab9e5c031cb1973ccab5f7f677a5a78aac";
      };
      r1 = {
        nix = import ../hackage/microecta-0.1.0.0-r1-912b7ae5a63d25e1f4835733e830a100e4d78225ab9d57b24ab22d7d8766573e.nix;
        revNum = 1;
        sha256 = "912b7ae5a63d25e1f4835733e830a100e4d78225ab9d57b24ab22d7d8766573e";
      };
      default = "r1";
    };
  };
}