{
  "0.1.0" = {
    sha256 = "fc64d1f35e380e660a1e82cabf6061f4fc7c7ff6595fd2de30ac67567c2ba423";
    revisions = {
      r0 = {
        nix = import ../hackage/cryptohash-conduit-0.1.0-r0-c65475c5a8d5496e80a2625003bdae3be86dd600a059ba4ea0c482627770cf7b.nix;
        revNum = 0;
        sha256 = "c65475c5a8d5496e80a2625003bdae3be86dd600a059ba4ea0c482627770cf7b";
      };
      r1 = {
        nix = import ../hackage/cryptohash-conduit-0.1.0-r1-0c8fde0bc977606b367fff35304672dabbf5d986c3767edc4f9c1103b623c0d0.nix;
        revNum = 1;
        sha256 = "0c8fde0bc977606b367fff35304672dabbf5d986c3767edc4f9c1103b623c0d0";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "ea516d898d3e34dae6be3e8bc59c9f61a61cb1222233dbfe84a84bb0ded4b4ce";
    revisions = {
      r0 = {
        nix = import ../hackage/cryptohash-conduit-0.1.1-r0-17b593fe13c4d0636aa068cfb7751ba6c6d69fe0a3234d24cb44e3b9145741cd.nix;
        revNum = 0;
        sha256 = "17b593fe13c4d0636aa068cfb7751ba6c6d69fe0a3234d24cb44e3b9145741cd";
      };
      default = "r0";
    };
  };
}