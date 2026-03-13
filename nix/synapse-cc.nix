{
  "0.1.0.0" = {
    sha256 = "462d7fed02f8c91f27d45a562d7576a1a11cfaa9ec828c6778f87aa1ebeb9b1b";
    revisions = {
      r0 = {
        nix = import ../hackage/synapse-cc-0.1.0.0-r0-eea49daae08d4e75fd97c565c1562666b4695731f444ad001ee8e1064b844d23.nix;
        revNum = 0;
        sha256 = "eea49daae08d4e75fd97c565c1562666b4695731f444ad001ee8e1064b844d23";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "df131de7c4dda1aa33c3901462eef3a277d696edc75cd8886fe9d78b25a70186";
    revisions = {
      r0 = {
        nix = import ../hackage/synapse-cc-0.2.0-r0-9fcc60f54ef7d0d7cf794e628743e927ce448ecd46043b41c056a09f2ba287c8.nix;
        revNum = 0;
        sha256 = "9fcc60f54ef7d0d7cf794e628743e927ce448ecd46043b41c056a09f2ba287c8";
      };
      default = "r0";
    };
  };
}