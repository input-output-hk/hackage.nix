{
  "0.1.0.0" = {
    sha256 = "91879fb8840fc1bc907c63df125880a367ec5b52d544806be1306b235103afe7";
    revisions = {
      r0 = {
        nix = import ../hackage/nurbs-0.1.0.0-r0-a332a82bfb4fdf4bfd805b7d6997c5e6a77b12a794a5a12f534771a73e16225f.nix;
        revNum = 0;
        sha256 = "a332a82bfb4fdf4bfd805b7d6997c5e6a77b12a794a5a12f534771a73e16225f";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "42459775e2b1c419343402da693465f3db61c5ab6e5666f44d810b568cf33054";
    revisions = {
      r0 = {
        nix = import ../hackage/nurbs-0.1.1.0-r0-de06765ddbee7b2d5c0c2795ea0f5a6b40f79afa8cf43b25b2dfe9097a639f49.nix;
        revNum = 0;
        sha256 = "de06765ddbee7b2d5c0c2795ea0f5a6b40f79afa8cf43b25b2dfe9097a639f49";
      };
      r1 = {
        nix = import ../hackage/nurbs-0.1.1.0-r1-17ee68339f33b5fa8ccc3ddf788ee5cb3ab3f40170b93175925a1b97534afdbc.nix;
        revNum = 1;
        sha256 = "17ee68339f33b5fa8ccc3ddf788ee5cb3ab3f40170b93175925a1b97534afdbc";
      };
      default = "r1";
    };
  };
}