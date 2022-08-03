{
  "0.1.0.0" = {
    sha256 = "4468d8a1c55009b146b8294ab9ed677b5c7a5e3d0fbae1825a5aebcd509412d0";
    revisions = {
      r0 = {
        nix = import ../hackage/jenga-0.1.0.0-r0-afde3065608c9cfa1ceba7320e48b646c4b930092dc213ca8863b8cf728be354.nix;
        revNum = 0;
        sha256 = "afde3065608c9cfa1ceba7320e48b646c4b930092dc213ca8863b8cf728be354";
        };
      default = "r0";
      };
    };
  "0.1.1.0" = {
    sha256 = "1339d5148f1715f9437ec839ffc3714e653005bd707db6a03e044f99f1971629";
    revisions = {
      r0 = {
        nix = import ../hackage/jenga-0.1.1.0-r0-5e40d1abdf950db45400f2d1a13dac3016aba8b929e3c247c0a231181bf36ddb.nix;
        revNum = 0;
        sha256 = "5e40d1abdf950db45400f2d1a13dac3016aba8b929e3c247c0a231181bf36ddb";
        };
      r1 = {
        nix = import ../hackage/jenga-0.1.1.0-r1-641105037f2a906a5caa2779b29761381cbfffd522f92988a0743583d425e604.nix;
        revNum = 1;
        sha256 = "641105037f2a906a5caa2779b29761381cbfffd522f92988a0743583d425e604";
        };
      default = "r1";
      };
    };
  }