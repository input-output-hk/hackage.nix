{
  "0.1.0.0" = {
    sha256 = "a17c15cd3dd42f30f6477c6e0a75ae05abb15ceb05dfd88c19e6ea856beb789f";
    revisions = {
      r0 = {
        nix = import ../hackage/positive-integer-0.1.0.0-r0-f8571ede514c351b7cfbbad32a52ae963c47265155af6e8276d418a71316ca5c.nix;
        revNum = 0;
        sha256 = "f8571ede514c351b7cfbbad32a52ae963c47265155af6e8276d418a71316ca5c";
      };
      r1 = {
        nix = import ../hackage/positive-integer-0.1.0.0-r1-ecfcc09399403b6c63d92cdb49febff6d6206abddd0a7972a3859ffdcb5d2b80.nix;
        revNum = 1;
        sha256 = "ecfcc09399403b6c63d92cdb49febff6d6206abddd0a7972a3859ffdcb5d2b80";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "6194e9571160b0411635a04d13227d9036860ea2cbc14a328df9c8ac2787bdfd";
    revisions = {
      r0 = {
        nix = import ../hackage/positive-integer-0.1.1.0-r0-89839ca89fb93320b142a1d7f7d6fdca26ec905bdb71e4ab964249e1fbfa20dc.nix;
        revNum = 0;
        sha256 = "89839ca89fb93320b142a1d7f7d6fdca26ec905bdb71e4ab964249e1fbfa20dc";
      };
      default = "r0";
    };
  };
  "0.1.2.0" = {
    sha256 = "58cd1370af7f54b0c829c5696661260aae758aaa0231bfd9a4512f3fb6001454";
    revisions = {
      r0 = {
        nix = import ../hackage/positive-integer-0.1.2.0-r0-f2bd0f1514070968ae2423d4d561773fae082b7340c8e07b7d90bb37f3db675a.nix;
        revNum = 0;
        sha256 = "f2bd0f1514070968ae2423d4d561773fae082b7340c8e07b7d90bb37f3db675a";
      };
      default = "r0";
    };
  };
}