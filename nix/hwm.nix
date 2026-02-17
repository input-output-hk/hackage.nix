{
  "0.0.1" = {
    sha256 = "eb83d5177e5b9bfc8099d9cbcb1bb682363cc9a27c2559ebb36112c5ba517b4a";
    revisions = {
      r0 = {
        nix = import ../hackage/hwm-0.0.1-r0-416d7462fdea87d13afabac86bdb281f2862c2c76052fd23cf53521c9f07277b.nix;
        revNum = 0;
        sha256 = "416d7462fdea87d13afabac86bdb281f2862c2c76052fd23cf53521c9f07277b";
      };
      default = "r0";
    };
  };
  "0.0.5" = {
    sha256 = "f3bcb9dcae83a2c0a64cac68435651c07fdcccf86c1507943257b89db3b54645";
    revisions = {
      r0 = {
        nix = import ../hackage/hwm-0.0.5-r0-f16ec23590a3661a9ff342d4f4587915ae3cb546f4f08536a4febd6da3375747.nix;
        revNum = 0;
        sha256 = "f16ec23590a3661a9ff342d4f4587915ae3cb546f4f08536a4febd6da3375747";
      };
      default = "r0";
    };
  };
}