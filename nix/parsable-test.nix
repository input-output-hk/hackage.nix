{
  "0.1.0.0" = {
    sha256 = "5f5f562f2e0f8caa53a81e34b90d8b590d8bb44fedd04566a96183ef62409333";
    revisions = {
      r0 = {
        nix = import ../hackage/parsable-test-0.1.0.0-r0-9cfbe8ba00bba6061d682e1eb54dbea81d47fa5159ce038ff98611db31acdecb.nix;
        revNum = 0;
        sha256 = "9cfbe8ba00bba6061d682e1eb54dbea81d47fa5159ce038ff98611db31acdecb";
      };
      r1 = {
        nix = import ../hackage/parsable-test-0.1.0.0-r1-f86b86a35155ac69207b69a81b14ccc94934c1416e2f5b44f127eb95bb62a8b7.nix;
        revNum = 1;
        sha256 = "f86b86a35155ac69207b69a81b14ccc94934c1416e2f5b44f127eb95bb62a8b7";
      };
      default = "r1";
    };
  };
}