{
  "1.0.0.0" = {
    sha256 = "302605bbc2bb8a1b97308d9611faf5e121958b846cbeb9421e2657a902ef7a63";
    revisions = {
      r0 = {
        nix = import ../hackage/effectful-th-1.0.0.0-r0-46842eeea2ca1ca2ab8a86302de84ec1367f4cb047e49256f386aec123b7f82b.nix;
        revNum = 0;
        sha256 = "46842eeea2ca1ca2ab8a86302de84ec1367f4cb047e49256f386aec123b7f82b";
        };
      r1 = {
        nix = import ../hackage/effectful-th-1.0.0.0-r1-2267555c8f24d6d9fd2fbb77e504b8f74168f4060847f801fa0686bf6757fe62.nix;
        revNum = 1;
        sha256 = "2267555c8f24d6d9fd2fbb77e504b8f74168f4060847f801fa0686bf6757fe62";
        };
      r2 = {
        nix = import ../hackage/effectful-th-1.0.0.0-r2-34437a052d2af2f025e78730dc025e194560defb08337e262cdb00dc7888a66c.nix;
        revNum = 2;
        sha256 = "34437a052d2af2f025e78730dc025e194560defb08337e262cdb00dc7888a66c";
        };
      default = "r2";
      };
    };
  }