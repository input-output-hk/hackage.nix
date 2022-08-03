{
  "0.1.0.0" = {
    sha256 = "c688fdf130fb133e6e74644945f8aad1acf6f70796c5c4ea5779cb691d68ff03";
    revisions = {
      r0 = {
        nix = import ../hackage/program-0.1.0.0-r0-af77fc21e5723945db9f7047d771966a7f9592498cbb9bf44b4583cdde00e577.nix;
        revNum = 0;
        sha256 = "af77fc21e5723945db9f7047d771966a7f9592498cbb9bf44b4583cdde00e577";
        };
      r1 = {
        nix = import ../hackage/program-0.1.0.0-r1-30e9a94381245010ad6d8dec57d059a1331b1cac59c94e467e3faafcdfe2e237.nix;
        revNum = 1;
        sha256 = "30e9a94381245010ad6d8dec57d059a1331b1cac59c94e467e3faafcdfe2e237";
        };
      default = "r1";
      };
    };
  }