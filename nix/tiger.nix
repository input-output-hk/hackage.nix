{
  "1.0" = {
    sha256 = "2a23fc75615d37bfd9cd3b9292861d60f553468ff8d7d19032ee1a6102528dfc";
    revisions = {
      r0 = {
        nix = import ../hackage/tiger-1.0-r0-bbfe453710058c5cca30714d93d0ad15e1677ae7507e69bc862ab01cb57a25d5.nix;
        revNum = 0;
        sha256 = "bbfe453710058c5cca30714d93d0ad15e1677ae7507e69bc862ab01cb57a25d5";
      };
      default = "r0";
    };
  };
  "1.1" = {
    sha256 = "3e891a128366ecf71099b831754b30f42e5792fa5bf9d97207132a3755f3cf47";
    revisions = {
      r0 = {
        nix = import ../hackage/tiger-1.1-r0-65e7f885a8b013330e27e903d6287e37ed50f15c74761d54d402f1ebc9926931.nix;
        revNum = 0;
        sha256 = "65e7f885a8b013330e27e903d6287e37ed50f15c74761d54d402f1ebc9926931";
      };
      default = "r0";
    };
  };
  "1.1.1" = {
    sha256 = "019332f021a738bc18109e02286f0d74b2d9534d6e445fe8394f93cfd48f95d2";
    revisions = {
      r0 = {
        nix = import ../hackage/tiger-1.1.1-r0-6ebabe2502ab9f13f845e235f7ee250fde53013a68f447848f4439445ab630e5.nix;
        revNum = 0;
        sha256 = "6ebabe2502ab9f13f845e235f7ee250fde53013a68f447848f4439445ab630e5";
      };
      default = "r0";
    };
  };
}