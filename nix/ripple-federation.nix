{
  "0.1" = {
    sha256 = "a500a55e069d15dd1672e4bbe80e68a4f2342fe720987a2b73d1783e748e5018";
    revisions = {
      r0 = {
        nix = import ../hackage/ripple-federation-0.1-r0-7becb717bd7f37b963371959798a31165eb4153995b647b6caa5f7e69901af0c.nix;
        revNum = 0;
        sha256 = "7becb717bd7f37b963371959798a31165eb4153995b647b6caa5f7e69901af0c";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "2f0346d17d651dc6f5d1ab9f1dd362aed053a2f99798cedc6191f8d3d6b76a12";
    revisions = {
      r0 = {
        nix = import ../hackage/ripple-federation-0.2-r0-46d364f994ed66413b5918955b8f50639e618478e8e78fa0604b2af8239796d3.nix;
        revNum = 0;
        sha256 = "46d364f994ed66413b5918955b8f50639e618478e8e78fa0604b2af8239796d3";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "1ab8ea172c19f193cfa1b03884a88d766a3bf0eecfd2342d3c45f08ad1a6f554";
    revisions = {
      r0 = {
        nix = import ../hackage/ripple-federation-0.3-r0-ea07ef7307604ef64426589f3efb35cd898947c1f6c278fb98b655ffcc283634.nix;
        revNum = 0;
        sha256 = "ea07ef7307604ef64426589f3efb35cd898947c1f6c278fb98b655ffcc283634";
      };
      default = "r0";
    };
  };
}