{
  "0.1" = {
    sha256 = "075626807744027a497765bfc480f511bf3d35eee077a2e5b50578df06152e88";
    revisions = {
      r0 = {
        nix = import ../hackage/dgs-0.1-r0-659a2836f7927969a41ead5f408dc78d18af9340356b7c9fad42d30eefd12d2f.nix;
        revNum = 0;
        sha256 = "659a2836f7927969a41ead5f408dc78d18af9340356b7c9fad42d30eefd12d2f";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "dddee01c6e6079e0ca62c1e34278b2bc78ce17c0c737b23ca5730c0f71a71d80";
    revisions = {
      r0 = {
        nix = import ../hackage/dgs-0.2-r0-297aaeb0a079a0c28ca6a22236f3d763192f8b3958a6013e659af6a29dc022a9.nix;
        revNum = 0;
        sha256 = "297aaeb0a079a0c28ca6a22236f3d763192f8b3958a6013e659af6a29dc022a9";
      };
      default = "r0";
    };
  };
}