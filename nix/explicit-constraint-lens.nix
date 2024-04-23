{
  "0.1.0.0" = {
    sha256 = "28356c4b97a9dbc9eb835451c44efa50257c37d78f281faf64b998fdeace2ea0";
    revisions = {
      r0 = {
        nix = import ../hackage/explicit-constraint-lens-0.1.0.0-r0-8db0d6b15840c7e12d6ff6018b25e98a8bd6f5702ac58093b2b1b9c1afeec721.nix;
        revNum = 0;
        sha256 = "8db0d6b15840c7e12d6ff6018b25e98a8bd6f5702ac58093b2b1b9c1afeec721";
      };
      r1 = {
        nix = import ../hackage/explicit-constraint-lens-0.1.0.0-r1-64d3e55a984c761f2670b48d985260c23993f5ea79c542cd4b83d020fb37b21a.nix;
        revNum = 1;
        sha256 = "64d3e55a984c761f2670b48d985260c23993f5ea79c542cd4b83d020fb37b21a";
      };
      default = "r1";
    };
  };
}