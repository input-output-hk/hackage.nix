{
  "0.1.0.0" = {
    sha256 = "3c0533fdf9ad65164bb7018dd5e6c9fe1f47be8396bd445bb75a6c6808f999f7";
    revisions = {
      r0 = {
        nix = import ../hackage/vty-crossplatform-0.1.0.0-r0-967ec8981c995e80b6bf1333d6871eddc590b2d59dab5b09100dcf764df06689.nix;
        revNum = 0;
        sha256 = "967ec8981c995e80b6bf1333d6871eddc590b2d59dab5b09100dcf764df06689";
        };
      r1 = {
        nix = import ../hackage/vty-crossplatform-0.1.0.0-r1-e07531db732ee44a40e8ef3a2fd3b3db6d2615a9f8f83b87de574e204f19be7c.nix;
        revNum = 1;
        sha256 = "e07531db732ee44a40e8ef3a2fd3b3db6d2615a9f8f83b87de574e204f19be7c";
        };
      default = "r1";
      };
    };
  }