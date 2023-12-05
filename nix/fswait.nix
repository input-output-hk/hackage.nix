{
  "1.0.0" = {
    sha256 = "600d1dfadca35052294b375297be33cbe732894e8da78e62ffa4e8c9b1714970";
    revisions = {
      r0 = {
        nix = import ../hackage/fswait-1.0.0-r0-047d72135817c58e6c75536a0bde720031a2bfcfff0a25ab11adddcdcd96190d.nix;
        revNum = 0;
        sha256 = "047d72135817c58e6c75536a0bde720031a2bfcfff0a25ab11adddcdcd96190d";
        };
      default = "r0";
      };
    };
  "1.1.0" = {
    sha256 = "63ad571377432fd478e6da8d7fea193afd50c8bd8135325ec241f4dc355716c7";
    revisions = {
      r0 = {
        nix = import ../hackage/fswait-1.1.0-r0-475f144f870fa228f21d14099bea8d7e5b62adc525aa995e1f2635fea3224788.nix;
        revNum = 0;
        sha256 = "475f144f870fa228f21d14099bea8d7e5b62adc525aa995e1f2635fea3224788";
        };
      r1 = {
        nix = import ../hackage/fswait-1.1.0-r1-a7f6616dbe7d24a0e45dee930d9dc8da89b41836545555221941225b2cad7fc1.nix;
        revNum = 1;
        sha256 = "a7f6616dbe7d24a0e45dee930d9dc8da89b41836545555221941225b2cad7fc1";
        };
      default = "r1";
      };
    };
  }