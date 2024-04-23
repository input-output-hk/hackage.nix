{
  "0.2.0.0" = {
    sha256 = "6e1bd4cac9fda774d37db6d2befe9cf8ecdfe88c3793bb0eadab49ace48b9723";
    revisions = {
      r0 = {
        nix = import ../hackage/httpstan-0.2.0.0-r0-44f90290a40a7768303a5ac636c9f0dc43535de37b81374dcb9eedfa30a1631d.nix;
        revNum = 0;
        sha256 = "44f90290a40a7768303a5ac636c9f0dc43535de37b81374dcb9eedfa30a1631d";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "4d614298e642573f7346ef3a79ad6b2a7665f6fd83d2acab67a934e24f508b87";
    revisions = {
      r0 = {
        nix = import ../hackage/httpstan-0.3.0.0-r0-a0fdca81d03554e67598d29be2760da6d51d743ef94ec8845dd93de0c6973aff.nix;
        revNum = 0;
        sha256 = "a0fdca81d03554e67598d29be2760da6d51d743ef94ec8845dd93de0c6973aff";
      };
      default = "r0";
    };
  };
}