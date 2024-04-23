{
  "0.1.0.0" = {
    sha256 = "15e1d3aafc2d0491117dd90943afa0c03f2111adeb6cf141a67d1ff8f82e5f1f";
    revisions = {
      r0 = {
        nix = import ../hackage/zxcvbn-dvorak-0.1.0.0-r0-4cda9a490d36ee6178f8113f97a8e07a820b29d17531c54206a74108a1fa2388.nix;
        revNum = 0;
        sha256 = "4cda9a490d36ee6178f8113f97a8e07a820b29d17531c54206a74108a1fa2388";
      };
      r1 = {
        nix = import ../hackage/zxcvbn-dvorak-0.1.0.0-r1-07b3a32c2fb073c5448d60327bf46e177d20971145a001e1088c13aad880a6a6.nix;
        revNum = 1;
        sha256 = "07b3a32c2fb073c5448d60327bf46e177d20971145a001e1088c13aad880a6a6";
      };
      default = "r1";
    };
  };
}