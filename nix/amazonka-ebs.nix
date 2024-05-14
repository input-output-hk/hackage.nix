{
  "2.0" = {
    sha256 = "50685c275c99b30f0b6b7cbea33449385da3dfd80bc75b1104d9824c1bf56e36";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ebs-2.0-r0-f84faf68e4ca67da0f43e957be08f7047b7e91f73a7087642de3bedb9cac80f8.nix;
        revNum = 0;
        sha256 = "f84faf68e4ca67da0f43e957be08f7047b7e91f73a7087642de3bedb9cac80f8";
      };
      r1 = {
        nix = import ../hackage/amazonka-ebs-2.0-r1-996b89c98535de8ea2f411d047b5da8d880972835a9a850ca067a9378965b0ef.nix;
        revNum = 1;
        sha256 = "996b89c98535de8ea2f411d047b5da8d880972835a9a850ca067a9378965b0ef";
      };
      default = "r1";
    };
  };
}