{
  "0.0.1.0" = {
    sha256 = "adc1ed4dd4bc455268e2c9ccaacbbb0ff1c6f39e7b2af9871cd936b569703447";
    revisions = {
      r0 = {
        nix = import ../hackage/hasktorch-types-th-0.0.1.0-r0-87d3900c6f50a49b151764b21dd5317b43398418573bddb7376fb9ddb57e3487.nix;
        revNum = 0;
        sha256 = "87d3900c6f50a49b151764b21dd5317b43398418573bddb7376fb9ddb57e3487";
      };
      r1 = {
        nix = import ../hackage/hasktorch-types-th-0.0.1.0-r1-cd720211f8059f9392d550bddebebe15d0bc1274bd0f7209cbf27265113dff7d.nix;
        revNum = 1;
        sha256 = "cd720211f8059f9392d550bddebebe15d0bc1274bd0f7209cbf27265113dff7d";
      };
      default = "r1";
    };
  };
}