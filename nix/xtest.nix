{
  "0.1" = {
    sha256 = "a5f02126ab2f9da6a942f63ae7d2b51a00939dc9c20bd78198613265ae2136b8";
    revisions = {
      r0 = {
        nix = import ../hackage/xtest-0.1-r0-9e507cbeb800d6fc34dd0a8f5fe32cdcb223afbcff7acc78e266b9a9c0150579.nix;
        revNum = 0;
        sha256 = "9e507cbeb800d6fc34dd0a8f5fe32cdcb223afbcff7acc78e266b9a9c0150579";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "67f60aab2bc7cfc944335c7b308c7dcf15b49e3d2074f071dbfa36af4fef1d85";
    revisions = {
      r0 = {
        nix = import ../hackage/xtest-0.2-r0-af975da13362c1aff0f8728aa98c087c78eaf594da9d10d648f5142b9ec6d7ef.nix;
        revNum = 0;
        sha256 = "af975da13362c1aff0f8728aa98c087c78eaf594da9d10d648f5142b9ec6d7ef";
      };
      default = "r0";
    };
  };
}