{
  "0.2.0.0" = {
    sha256 = "9bcea270cc01a117c892315fff0dd46de3e58466e9ef82f7571eedad9b58028c";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-conduit-merges-0.2.0.0-r0-117ef4b004c29f8219fdf3fd55904c9f4cbe2003954181e17ea876ec3b232405.nix;
        revNum = 0;
        sha256 = "117ef4b004c29f8219fdf3fd55904c9f4cbe2003954181e17ea876ec3b232405";
      };
      r1 = {
        nix = import ../hackage/hw-conduit-merges-0.2.0.0-r1-6c5f4ef342841463462cd887352e16940a85eee178412dda93f879c0fe89f2ab.nix;
        revNum = 1;
        sha256 = "6c5f4ef342841463462cd887352e16940a85eee178412dda93f879c0fe89f2ab";
      };
      default = "r1";
    };
  };
  "0.2.1.0" = {
    sha256 = "a03e37517f8a6c1d277762eb68e8f148dceebfec26e7b810465a5e7c340b5110";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-conduit-merges-0.2.1.0-r0-ee5d63522fa85c48d9c20e8dd6fa5f2ac901d17d52f650c959f9a22040308bc8.nix;
        revNum = 0;
        sha256 = "ee5d63522fa85c48d9c20e8dd6fa5f2ac901d17d52f650c959f9a22040308bc8";
      };
      r1 = {
        nix = import ../hackage/hw-conduit-merges-0.2.1.0-r1-ba826bbf0d6fb47ae5524b800876a670dd3721a52de966c4eb7caeb6e2c03b65.nix;
        revNum = 1;
        sha256 = "ba826bbf0d6fb47ae5524b800876a670dd3721a52de966c4eb7caeb6e2c03b65";
      };
      default = "r1";
    };
  };
}