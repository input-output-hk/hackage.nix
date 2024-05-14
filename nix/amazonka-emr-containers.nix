{
  "2.0" = {
    sha256 = "424711eb8f96af70df3bdaa8596a4a005cb88b6b791512ef7e15979bf36f8d56";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-emr-containers-2.0-r0-b4b0bd1d75d45392616ec81ac58a0d0fb3532ed46287eff9c30561e4ca34784b.nix;
        revNum = 0;
        sha256 = "b4b0bd1d75d45392616ec81ac58a0d0fb3532ed46287eff9c30561e4ca34784b";
      };
      r1 = {
        nix = import ../hackage/amazonka-emr-containers-2.0-r1-1d8f301f88fdd4981ca00faaafea42a5ff71b34a2e8c692f2022ba93b805eb5e.nix;
        revNum = 1;
        sha256 = "1d8f301f88fdd4981ca00faaafea42a5ff71b34a2e8c692f2022ba93b805eb5e";
      };
      default = "r1";
    };
  };
}