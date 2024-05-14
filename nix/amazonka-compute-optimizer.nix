{
  "2.0" = {
    sha256 = "1b45108244a9c990df57463eba4f3e5efbda1d50a684935cdb8779db010ba008";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-compute-optimizer-2.0-r0-ae99b6766f9734c09f7ddf3527e76834d4f772e12ae4f580dd4757437a055674.nix;
        revNum = 0;
        sha256 = "ae99b6766f9734c09f7ddf3527e76834d4f772e12ae4f580dd4757437a055674";
      };
      r1 = {
        nix = import ../hackage/amazonka-compute-optimizer-2.0-r1-ad8a114760add1912299c6e9338124748d76836f180694ce34fb3c77d2635d7f.nix;
        revNum = 1;
        sha256 = "ad8a114760add1912299c6e9338124748d76836f180694ce34fb3c77d2635d7f";
      };
      default = "r1";
    };
  };
}