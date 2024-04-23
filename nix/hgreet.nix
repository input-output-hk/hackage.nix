{
  "0.1.0.0" = {
    sha256 = "35806c22938cbb8bca95e4a8879cfa5ec52bba12921efa40f296de2c8f99847c";
    revisions = {
      r0 = {
        nix = import ../hackage/hgreet-0.1.0.0-r0-7d6bd4db584541e89f71b5ab829999aa98df2281c7e9800d9ebd9e7ba46fc770.nix;
        revNum = 0;
        sha256 = "7d6bd4db584541e89f71b5ab829999aa98df2281c7e9800d9ebd9e7ba46fc770";
      };
      r1 = {
        nix = import ../hackage/hgreet-0.1.0.0-r1-2f2f084ff74848e5151b6025ae266206b238d6e238d371ccb7ff67207a0dc2da.nix;
        revNum = 1;
        sha256 = "2f2f084ff74848e5151b6025ae266206b238d6e238d371ccb7ff67207a0dc2da";
      };
      r2 = {
        nix = import ../hackage/hgreet-0.1.0.0-r2-ab5241f82bb452fc4674da8d16966b153a8113e2631c9eebab74050a3ad224d1.nix;
        revNum = 2;
        sha256 = "ab5241f82bb452fc4674da8d16966b153a8113e2631c9eebab74050a3ad224d1";
      };
      r3 = {
        nix = import ../hackage/hgreet-0.1.0.0-r3-879b4c9baf94f14248650040db6be5fb29b01f9a37d48b0ecaa1232b4351780a.nix;
        revNum = 3;
        sha256 = "879b4c9baf94f14248650040db6be5fb29b01f9a37d48b0ecaa1232b4351780a";
      };
      default = "r3";
    };
  };
}