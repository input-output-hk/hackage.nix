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
  }