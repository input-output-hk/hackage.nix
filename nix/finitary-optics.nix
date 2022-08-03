{
  "1.0.0.0" = {
    sha256 = "a731724dc54606d3edd637f17cf5b5110102d76f5410dbd7c33134063d184947";
    revisions = {
      r0 = {
        nix = import ../hackage/finitary-optics-1.0.0.0-r0-f198afd859f3f6995e77377787ab28c8baccc039b41f8c88678603d28fb5d562.nix;
        revNum = 0;
        sha256 = "f198afd859f3f6995e77377787ab28c8baccc039b41f8c88678603d28fb5d562";
        };
      r1 = {
        nix = import ../hackage/finitary-optics-1.0.0.0-r1-cdbca1d55f8e5459e7912f9abd98ab950a7d52f184342e04fd06fe3db9063adc.nix;
        revNum = 1;
        sha256 = "cdbca1d55f8e5459e7912f9abd98ab950a7d52f184342e04fd06fe3db9063adc";
        };
      r2 = {
        nix = import ../hackage/finitary-optics-1.0.0.0-r2-647fe247ffeef7b3d25976f8c2686123559c10339d75b9414d30988d1611159f.nix;
        revNum = 2;
        sha256 = "647fe247ffeef7b3d25976f8c2686123559c10339d75b9414d30988d1611159f";
        };
      default = "r2";
      };
    };
  }