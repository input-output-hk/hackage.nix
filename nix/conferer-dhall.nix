{
  "1.0.0.0" = {
    sha256 = "2224522c3d66d2c4fcb141522368e398724781eeab204515e923715959608277";
    revisions = {
      r0 = {
        nix = import ../hackage/conferer-dhall-1.0.0.0-r0-68912a2a78fb6635b8c9bfa64c21db6607485bc0434571f911abe8b0bdba3181.nix;
        revNum = 0;
        sha256 = "68912a2a78fb6635b8c9bfa64c21db6607485bc0434571f911abe8b0bdba3181";
      };
      r1 = {
        nix = import ../hackage/conferer-dhall-1.0.0.0-r1-576cc686ac66e645df6f405e54cf6ab5d2adeb1c97a09e27b1ced9897a2672f7.nix;
        revNum = 1;
        sha256 = "576cc686ac66e645df6f405e54cf6ab5d2adeb1c97a09e27b1ced9897a2672f7";
      };
      default = "r1";
    };
  };
  "1.1.0.0" = {
    sha256 = "e15a96cd7e33e277ca3ea62472fff05054bc4802c5b6ce3a0e7c6a55beec1d72";
    revisions = {
      r0 = {
        nix = import ../hackage/conferer-dhall-1.1.0.0-r0-1d2655f85a624db601a318f004d708ba2d6cd02dc1c4190ebd0f91b4b30cb32c.nix;
        revNum = 0;
        sha256 = "1d2655f85a624db601a318f004d708ba2d6cd02dc1c4190ebd0f91b4b30cb32c";
      };
      r1 = {
        nix = import ../hackage/conferer-dhall-1.1.0.0-r1-128855e870e7e187768c15000d0126676ab0d173b0d90ed5b9cc151f872a6cad.nix;
        revNum = 1;
        sha256 = "128855e870e7e187768c15000d0126676ab0d173b0d90ed5b9cc151f872a6cad";
      };
      r2 = {
        nix = import ../hackage/conferer-dhall-1.1.0.0-r2-213e36576a4120ea7e7e03bf8a12223f9d5a417e03a459746e06e09aaa1901b5.nix;
        revNum = 2;
        sha256 = "213e36576a4120ea7e7e03bf8a12223f9d5a417e03a459746e06e09aaa1901b5";
      };
      r3 = {
        nix = import ../hackage/conferer-dhall-1.1.0.0-r3-18166aa2f92faf9dca877c38550affd63a276995b65dcd6e8f946b14b4500c3c.nix;
        revNum = 3;
        sha256 = "18166aa2f92faf9dca877c38550affd63a276995b65dcd6e8f946b14b4500c3c";
      };
      default = "r3";
    };
  };
}