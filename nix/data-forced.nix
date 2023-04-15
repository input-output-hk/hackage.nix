{
  "0.1.0.0" = {
    sha256 = "220421e404ef3043574e760fe176dfce9a20f0512f0eb63782eb662a9e715d5a";
    revisions = {
      r0 = {
        nix = import ../hackage/data-forced-0.1.0.0-r0-216bce1c1c6af8f4f768b20cc1406e8516f4215baeb552733f7d59f8514addc6.nix;
        revNum = 0;
        sha256 = "216bce1c1c6af8f4f768b20cc1406e8516f4215baeb552733f7d59f8514addc6";
        };
      r1 = {
        nix = import ../hackage/data-forced-0.1.0.0-r1-0e326e21c3add48a04f277aecd68500da51685d791fcea71afccde989ab90f3a.nix;
        revNum = 1;
        sha256 = "0e326e21c3add48a04f277aecd68500da51685d791fcea71afccde989ab90f3a";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "de18de98fb3eee17f1b9f0cd9a0c65662999b0366bf13362f5d017d054a0e271";
    revisions = {
      r0 = {
        nix = import ../hackage/data-forced-0.2.0.0-r0-7509f712bbfb11ef069cb3506f70ca4ee6cf7ce63f9e0a7259476010823ab9f2.nix;
        revNum = 0;
        sha256 = "7509f712bbfb11ef069cb3506f70ca4ee6cf7ce63f9e0a7259476010823ab9f2";
        };
      default = "r0";
      };
    };
  }