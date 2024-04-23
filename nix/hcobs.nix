{
  "0.1.0.0" = {
    sha256 = "a8cea7c3792d8a1319e2c3e4b980bfa52766d8ad6e23d256280460bdc7eeef6c";
    revisions = {
      r0 = {
        nix = import ../hackage/hcobs-0.1.0.0-r0-e1b817fcf131ba92170f9590233ae060d6c0b930e38afad0db40841277819bc9.nix;
        revNum = 0;
        sha256 = "e1b817fcf131ba92170f9590233ae060d6c0b930e38afad0db40841277819bc9";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "c737fcc12345b36eb65ee07c92fd9bf6dd5432e41e35c8fb4a172c6f10117d80";
    revisions = {
      r0 = {
        nix = import ../hackage/hcobs-0.1.0.1-r0-786f41702e3d856db13f1c7f835cfec849af68e83555d032fe4f2138543d5179.nix;
        revNum = 0;
        sha256 = "786f41702e3d856db13f1c7f835cfec849af68e83555d032fe4f2138543d5179";
      };
      default = "r0";
    };
  };
}