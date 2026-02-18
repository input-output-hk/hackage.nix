{
  "0.1" = {
    sha256 = "93c9597f06b2b332ad2a997cea7d6d2c41d5acc6a2ce3335fc267416d908fc56";
    revisions = {
      r0 = {
        nix = import ../hackage/hsaml2-0.1-r0-ad34ce1349e38dc1fe480c0ca147b3cbcb597c7dd867621bd33e6220545c3d13.nix;
        revNum = 0;
        sha256 = "ad34ce1349e38dc1fe480c0ca147b3cbcb597c7dd867621bd33e6220545c3d13";
      };
      r1 = {
        nix = import ../hackage/hsaml2-0.1-r1-14844fbe83c4810ccf7148bd71256b5d26f1c8bfbb339adf03ea93e405fe7e77.nix;
        revNum = 1;
        sha256 = "14844fbe83c4810ccf7148bd71256b5d26f1c8bfbb339adf03ea93e405fe7e77";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "4c7d378d427f4935e9b8a2c7ef0ba983337eb57066dd4abe3aca8f9cadae9aca";
    revisions = {
      r0 = {
        nix = import ../hackage/hsaml2-0.1.1-r0-f80bfaa6ffc5c8bb5d56e886ad6cc71c47c83b9993d255ab4784fc0e9f308ac5.nix;
        revNum = 0;
        sha256 = "f80bfaa6ffc5c8bb5d56e886ad6cc71c47c83b9993d255ab4784fc0e9f308ac5";
      };
      default = "r0";
    };
  };
  "0.1.2" = {
    sha256 = "714ca717e8a5d81ec52582e0b4bd909e444742659b182a0dcc7cf44d0bb6761b";
    revisions = {
      r0 = {
        nix = import ../hackage/hsaml2-0.1.2-r0-cf6ba00af047ee6d72d6403e798ba3af2582d1589bfd8b098602794ef1a8977c.nix;
        revNum = 0;
        sha256 = "cf6ba00af047ee6d72d6403e798ba3af2582d1589bfd8b098602794ef1a8977c";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "d6561a9e8e0cd2cbfa780a59e2be240a983cc724a9ae34a10ed542f83570d60a";
    revisions = {
      r0 = {
        nix = import ../hackage/hsaml2-0.2.0-r0-458457590897dd56034867d1af2fc6cd83c26602e552e6d1129a1c0ff385d2a7.nix;
        revNum = 0;
        sha256 = "458457590897dd56034867d1af2fc6cd83c26602e552e6d1129a1c0ff385d2a7";
      };
      default = "r0";
    };
  };
}