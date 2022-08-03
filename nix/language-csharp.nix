{
  "0.0.1" = {
    sha256 = "4c5cca84e17ce4e162be6e1094927372d3e05383d5e5812d7716257c2b88e7e9";
    revisions = {
      r0 = {
        nix = import ../hackage/language-csharp-0.0.1-r0-7574f0d08d536ab61dfe431eef66de58fcfcbf6530088bb6fa355a191f5432ea.nix;
        revNum = 0;
        sha256 = "7574f0d08d536ab61dfe431eef66de58fcfcbf6530088bb6fa355a191f5432ea";
        };
      r1 = {
        nix = import ../hackage/language-csharp-0.0.1-r1-1d5f4ef7d6033afae0275a3af21cece2722979f18d65a11dabf073913fb0b7f4.nix;
        revNum = 1;
        sha256 = "1d5f4ef7d6033afae0275a3af21cece2722979f18d65a11dabf073913fb0b7f4";
        };
      default = "r1";
      };
    };
  }