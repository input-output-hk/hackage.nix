{
  "0" = {
    sha256 = "58de561c83b57311fb7d1d44ba70d7f4c6a7930541fcf1ce1b6c1dcfc264d7f2";
    revisions = {
      r0 = {
        nix = import ../hackage/aws-lambda-runtime-0-r0-9fa5054b28db0ad426291d4291d2e5e73add07696240d0acf8c6fba6a8c81285.nix;
        revNum = 0;
        sha256 = "9fa5054b28db0ad426291d4291d2e5e73add07696240d0acf8c6fba6a8c81285";
        };
      default = "r0";
      };
    };
  "0.0.0.1" = {
    sha256 = "0878c972d92c2026d09c15c50ff291eb24c016afee1b58635969f9131fc5f8fb";
    revisions = {
      r0 = {
        nix = import ../hackage/aws-lambda-runtime-0.0.0.1-r0-353b0c9176f24cfb4b321d2e86292cf8b83219d9e1e886781b9a5067e8dcbe4b.nix;
        revNum = 0;
        sha256 = "353b0c9176f24cfb4b321d2e86292cf8b83219d9e1e886781b9a5067e8dcbe4b";
        };
      r1 = {
        nix = import ../hackage/aws-lambda-runtime-0.0.0.1-r1-5eda8c7f265242b5651fe4db888c99137bc106cdc742fd03118f750a5132ae3e.nix;
        revNum = 1;
        sha256 = "5eda8c7f265242b5651fe4db888c99137bc106cdc742fd03118f750a5132ae3e";
        };
      default = "r1";
      };
    };
  }