{
  "2.0" = {
    sha256 = "608bd74926fc6b11816343b6525508a47e4d325e48360ad07dc256d8d17057d0";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-synthetics-2.0-r0-eff61a5f68ff899af5d1ad72a7641d1a4853d72ad97c0774881cc2bf386e7541.nix;
        revNum = 0;
        sha256 = "eff61a5f68ff899af5d1ad72a7641d1a4853d72ad97c0774881cc2bf386e7541";
      };
      r1 = {
        nix = import ../hackage/amazonka-synthetics-2.0-r1-06e4a4f336200e5ae087d2a8eae6a1fe2e66829eb2e115f029f46742a7ef6655.nix;
        revNum = 1;
        sha256 = "06e4a4f336200e5ae087d2a8eae6a1fe2e66829eb2e115f029f46742a7ef6655";
      };
      default = "r1";
    };
  };
}