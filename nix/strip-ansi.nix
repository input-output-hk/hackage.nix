{
  "0.0.0" = {
    sha256 = "f73a3ddd11ecba86134aebaa70e7672b166c4e7f742c2cc0fdd3e7a3c43b2f54";
    revisions = {
      r0 = {
        nix = import ../hackage/strip-ansi-0.0.0-r0-922d6c65fbc5c98c1417feb02b3e3475c428fb4e717d138817abec24149696c5.nix;
        revNum = 0;
        sha256 = "922d6c65fbc5c98c1417feb02b3e3475c428fb4e717d138817abec24149696c5";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "6491bda6dc1a97b55b3b7ba352048b65aa7644a0a2ca4184db55164630ba1bbc";
    revisions = {
      r0 = {
        nix = import ../hackage/strip-ansi-0.0.1-r0-eb23bbe46da0dda7bfbdf98097be5ad9e8226d07fc9b63c0aae4e4272e4aa689.nix;
        revNum = 0;
        sha256 = "eb23bbe46da0dda7bfbdf98097be5ad9e8226d07fc9b63c0aae4e4272e4aa689";
      };
      default = "r0";
    };
  };
}