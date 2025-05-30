{
  "0.0.0.0" = {
    sha256 = "e85756fb57508123670df85d7a6a451bd8326b4b259ac5e0e96354ccee78650c";
    revisions = {
      r0 = {
        nix = import ../hackage/quaalude-0.0.0.0-r0-e30deda2e234463b4281c878aa03b602262fadf01445abff936bbd6e61702b54.nix;
        revNum = 0;
        sha256 = "e30deda2e234463b4281c878aa03b602262fadf01445abff936bbd6e61702b54";
      };
      default = "r0";
    };
  };
  "0.0.0.1" = {
    sha256 = "86d131bdffeb6032fe2ae1f04692f3ae732f2ddc9840ee0813fa1d2deacd9a73";
    revisions = {
      r0 = {
        nix = import ../hackage/quaalude-0.0.0.1-r0-f711f0807e49ffc7f59813641c8377bfdeeb6713ffad72f39eb57092bd003d70.nix;
        revNum = 0;
        sha256 = "f711f0807e49ffc7f59813641c8377bfdeeb6713ffad72f39eb57092bd003d70";
      };
      r1 = {
        nix = import ../hackage/quaalude-0.0.0.1-r1-57155f7de3b00fe3abe46df3b8305262f5d26d9b19ff6d879fe03fde54b70f57.nix;
        revNum = 1;
        sha256 = "57155f7de3b00fe3abe46df3b8305262f5d26d9b19ff6d879fe03fde54b70f57";
      };
      r2 = {
        nix = import ../hackage/quaalude-0.0.0.1-r2-6a33d6d00e61e08267225d1265e20067f5945dd10ab74e7af9f6a2b1ac9456b5.nix;
        revNum = 2;
        sha256 = "6a33d6d00e61e08267225d1265e20067f5945dd10ab74e7af9f6a2b1ac9456b5";
      };
      r3 = {
        nix = import ../hackage/quaalude-0.0.0.1-r3-f6892226095ffa03c10497d7d58d575e4d424d572e22ec28e99632bf1d01115f.nix;
        revNum = 3;
        sha256 = "f6892226095ffa03c10497d7d58d575e4d424d572e22ec28e99632bf1d01115f";
      };
      default = "r3";
    };
  };
}