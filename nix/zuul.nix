{
  "0.1.0.0" = {
    sha256 = "3b7494314a6f6dac0ba3186998aa026bc17fd74ebefe28d1b5431bdae366eaa9";
    revisions = {
      r0 = {
        nix = import ../hackage/zuul-0.1.0.0-r0-eac17a72fd8b6ead5863ef001aee2e7fc1b31d241ec13e20b4f325a72cbd9cc9.nix;
        revNum = 0;
        sha256 = "eac17a72fd8b6ead5863ef001aee2e7fc1b31d241ec13e20b4f325a72cbd9cc9";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "e4f7a7fc012bcf5f047d5aa26ffce2fdf8f519ab3774d1cb4a4c8c0f92f1915f";
    revisions = {
      r0 = {
        nix = import ../hackage/zuul-0.1.1.0-r0-3f44b1b51aa2a8221b77c79a3833ba2337e0b5756105d6aa7f7e2d4ac242fceb.nix;
        revNum = 0;
        sha256 = "3f44b1b51aa2a8221b77c79a3833ba2337e0b5756105d6aa7f7e2d4ac242fceb";
      };
      default = "r0";
    };
  };
}