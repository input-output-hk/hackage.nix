{
  "2.0" = {
    sha256 = "16a5c1e42dc93f60a396a4f13d00205bc24c912ed76fe138a2a73cfd7ef71e43";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-timestream-write-2.0-r0-4854f69ac35d7cb9886e0b2cf1248c54b90b68665a35f7e75990a290fbf88e78.nix;
        revNum = 0;
        sha256 = "4854f69ac35d7cb9886e0b2cf1248c54b90b68665a35f7e75990a290fbf88e78";
      };
      r1 = {
        nix = import ../hackage/amazonka-timestream-write-2.0-r1-d6262007b95d8cd74ba363f0446cab3dabedc9d76ea01323b785f528a8257b0e.nix;
        revNum = 1;
        sha256 = "d6262007b95d8cd74ba363f0446cab3dabedc9d76ea01323b785f528a8257b0e";
      };
      default = "r1";
    };
  };
}