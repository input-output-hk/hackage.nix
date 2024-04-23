{
  "0.1.0.0" = {
    sha256 = "9d17d609f7c44ed6ecc1fa63e3a9f5b072b1b7a809ee955c34cdafb9cf4927a7";
    revisions = {
      r0 = {
        nix = import ../hackage/captcha-2captcha-0.1.0.0-r0-15eb7869b455389b7974c2cac824a2cfa16516cf240ece89e562e6428390b436.nix;
        revNum = 0;
        sha256 = "15eb7869b455389b7974c2cac824a2cfa16516cf240ece89e562e6428390b436";
      };
      r1 = {
        nix = import ../hackage/captcha-2captcha-0.1.0.0-r1-71f99b626525f9606c7be3f2465bd8bb5c495ff2c87c5a5f6602797edefc3b9b.nix;
        revNum = 1;
        sha256 = "71f99b626525f9606c7be3f2465bd8bb5c495ff2c87c5a5f6602797edefc3b9b";
      };
      default = "r1";
    };
  };
}