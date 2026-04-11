{
  "0.1.0.0" = {
    sha256 = "228ff1274267de74414355790e77690b5ab5547301d193878748f4345e78f609";
    revisions = {
      r0 = {
        nix = import ../hackage/tinycheck-0.1.0.0-r0-c6b7f59a737018f4de2fe7fd34c7619ac40bd9c0a7466e586e9bef689b617395.nix;
        revNum = 0;
        sha256 = "c6b7f59a737018f4de2fe7fd34c7619ac40bd9c0a7466e586e9bef689b617395";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "d1ef258e2bfd32009143b6928d00986673c51330241695d4d310767fc69d469b";
    revisions = {
      r0 = {
        nix = import ../hackage/tinycheck-0.2.0-r0-aceabfd209454d61a88d7cbb08f6e08f7aeecbaee57b644d76746650e293f82d.nix;
        revNum = 0;
        sha256 = "aceabfd209454d61a88d7cbb08f6e08f7aeecbaee57b644d76746650e293f82d";
      };
      default = "r0";
    };
  };
}