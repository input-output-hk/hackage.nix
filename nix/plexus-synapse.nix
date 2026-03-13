{
  "0.3.0.0" = {
    sha256 = "dd4bd9b029c3812b923244a31cde51588169b2a49e00bbae478f79fc1e1b7c61";
    revisions = {
      r0 = {
        nix = import ../hackage/plexus-synapse-0.3.0.0-r0-83c76ac0fe2c4e727994d7c17f67d26b950b46f16e6b9ae995f0aae19218839e.nix;
        revNum = 0;
        sha256 = "83c76ac0fe2c4e727994d7c17f67d26b950b46f16e6b9ae995f0aae19218839e";
      };
      default = "r0";
    };
  };
  "3.5.0" = {
    sha256 = "679cce940be6fe07b94931ca39434962029251015baaa46709e5030d388b7e09";
    revisions = {
      r0 = {
        nix = import ../hackage/plexus-synapse-3.5.0-r0-674d74c0bd83490180575e933ade7fc5802d70949053adf53a5fa242976ecbf9.nix;
        revNum = 0;
        sha256 = "674d74c0bd83490180575e933ade7fc5802d70949053adf53a5fa242976ecbf9";
      };
      default = "r0";
    };
  };
}