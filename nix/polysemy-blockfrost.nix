{
  "0.1.0.0" = {
    sha256 = "76a9f550adf5abf03f6d40bd21004c864c2526df6cdc9cf2e4f3c8871ffad3d3";
    revisions = {
      r0 = {
        nix = import ../hackage/polysemy-blockfrost-0.1.0.0-r0-18fde624fe1a108bfbde7165cffb8cd47361f9b0a81a8458f58c8e6eb4a88464.nix;
        revNum = 0;
        sha256 = "18fde624fe1a108bfbde7165cffb8cd47361f9b0a81a8458f58c8e6eb4a88464";
      };
      r1 = {
        nix = import ../hackage/polysemy-blockfrost-0.1.0.0-r1-2618002b787bd534042dbc3ff3827cabe32a7705ddddd88d0f569e1523220a57.nix;
        revNum = 1;
        sha256 = "2618002b787bd534042dbc3ff3827cabe32a7705ddddd88d0f569e1523220a57";
      };
      default = "r1";
    };
  };
}