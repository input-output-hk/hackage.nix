{
  "0.1.0" = {
    sha256 = "0bea4231a8bfcb94382cbdee54427c276e25a24d24edca2ef8a527c5b675da96";
    revisions = {
      r0 = {
        nix = import ../hackage/xleb-0.1.0-r0-8f056c9251ac0206f7cf2e61d38f15102aa377d7eb8bc77f76b97f6255d690a3.nix;
        revNum = 0;
        sha256 = "8f056c9251ac0206f7cf2e61d38f15102aa377d7eb8bc77f76b97f6255d690a3";
      };
      r1 = {
        nix = import ../hackage/xleb-0.1.0-r1-e24c1158d17287410004a94432639c8263b873a9591bd51f8e1bcebd5040a808.nix;
        revNum = 1;
        sha256 = "e24c1158d17287410004a94432639c8263b873a9591bd51f8e1bcebd5040a808";
      };
      default = "r1";
    };
  };
}