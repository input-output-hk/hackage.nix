{
  "2.0" = {
    sha256 = "8fc39371a3b4bb08cd9e945d76da6a9b1e227ba82c1f069a5cb3f732c2ed05d8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-networkmanager-2.0-r0-199181ed4940f8c2023019e537145ed9ac6bffd6ea66f0878b774612ebfc39ce.nix;
        revNum = 0;
        sha256 = "199181ed4940f8c2023019e537145ed9ac6bffd6ea66f0878b774612ebfc39ce";
      };
      r1 = {
        nix = import ../hackage/amazonka-networkmanager-2.0-r1-7aa4ab4a78155b9314bd3ab06460db3b7e6241f24bf407e136c709277010aeb9.nix;
        revNum = 1;
        sha256 = "7aa4ab4a78155b9314bd3ab06460db3b7e6241f24bf407e136c709277010aeb9";
      };
      default = "r1";
    };
  };
}