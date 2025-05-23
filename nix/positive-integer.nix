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
}