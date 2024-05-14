{
  "2.0" = {
    sha256 = "f6781174326675d5aee5c9ef14380a0a7449fa7603c8a29ead3e53234e1500c7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-quicksight-2.0-r0-9870d9d324f736cbb621c69e51016a266ae14f745ad3cfb9379d6a171c9c599c.nix;
        revNum = 0;
        sha256 = "9870d9d324f736cbb621c69e51016a266ae14f745ad3cfb9379d6a171c9c599c";
      };
      r1 = {
        nix = import ../hackage/amazonka-quicksight-2.0-r1-0c2bef520f26269b88d9d4fb9f7f4679aab6cba8c7f76d766a0307e08e5ce380.nix;
        revNum = 1;
        sha256 = "0c2bef520f26269b88d9d4fb9f7f4679aab6cba8c7f76d766a0307e08e5ce380";
      };
      default = "r1";
    };
  };
}