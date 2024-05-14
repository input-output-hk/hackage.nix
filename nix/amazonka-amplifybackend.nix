{
  "2.0" = {
    sha256 = "a777dac310764c88a980e74d4a87f46140f389817111950ce28d55fabdc8aaca";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-amplifybackend-2.0-r0-760b549c67fcfceaa844ade4ef4989ec7ed0befb60893065dca1625579a5a119.nix;
        revNum = 0;
        sha256 = "760b549c67fcfceaa844ade4ef4989ec7ed0befb60893065dca1625579a5a119";
      };
      r1 = {
        nix = import ../hackage/amazonka-amplifybackend-2.0-r1-f4d5bd67a720d383f2f9756331232f39d90e3d5c2fb5c9b0cb6166bee9792f85.nix;
        revNum = 1;
        sha256 = "f4d5bd67a720d383f2f9756331232f39d90e3d5c2fb5c9b0cb6166bee9792f85";
      };
      default = "r1";
    };
  };
}