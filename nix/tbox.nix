{
  "0.0.0" = {
    sha256 = "86eb19a5a1ae60d352520a7495aed616f524385aac3b35bad7545c39d18a4409";
    revisions = {
      r0 = {
        nix = import ../hackage/tbox-0.0.0-r0-9b1243ec5865718786feb3bc4d205ecb188e7de288e72f80f8ff682f50e19744.nix;
        revNum = 0;
        sha256 = "9b1243ec5865718786feb3bc4d205ecb188e7de288e72f80f8ff682f50e19744";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "7e876bde1781d42bb008038a64ce7daa8bf4e3297dcbfff11d2efb1c5b254c63";
    revisions = {
      r0 = {
        nix = import ../hackage/tbox-0.1.0-r0-11411a339b7f5dca89afce226e811acdd895836547ee3fabd623997a13e6bb33.nix;
        revNum = 0;
        sha256 = "11411a339b7f5dca89afce226e811acdd895836547ee3fabd623997a13e6bb33";
      };
      default = "r0";
    };
  };
}