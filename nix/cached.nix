{
  "0.1.0.0" = {
    sha256 = "bbe9280d9a4535a8681ad10713278650cc71588f623196b818b3c2d918bfa5a7";
    revisions = {
      r0 = {
        nix = import ../hackage/cached-0.1.0.0-r0-50edd08b356f5339f0d975011a56ef9acc3f91c9baa586f7ae45e2fd70d3d8a8.nix;
        revNum = 0;
        sha256 = "50edd08b356f5339f0d975011a56ef9acc3f91c9baa586f7ae45e2fd70d3d8a8";
        };
      r1 = {
        nix = import ../hackage/cached-0.1.0.0-r1-f87efcbf4086ec5ff611b366a54b7fa950fd4a48ff410c37bbf31a91edd80a1e.nix;
        revNum = 1;
        sha256 = "f87efcbf4086ec5ff611b366a54b7fa950fd4a48ff410c37bbf31a91edd80a1e";
        };
      default = "r1";
      };
    };
  }