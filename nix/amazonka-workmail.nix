{
  "1.6.0" = {
    sha256 = "054f0b7131ba54307a55fce64355969d375478d6e8dd8cff381446f835578729";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-workmail-1.6.0-r0-b7be995adcc90cb70c02f89fbe4edf46d69704dbf41d720feb1fb8aa52b2beca.nix;
        revNum = 0;
        sha256 = "b7be995adcc90cb70c02f89fbe4edf46d69704dbf41d720feb1fb8aa52b2beca";
      };
      r1 = {
        nix = import ../hackage/amazonka-workmail-1.6.0-r1-d84c8a7af74e6d45c14d9f00ea8260ebcc45a76938724053e49699f3beba9377.nix;
        revNum = 1;
        sha256 = "d84c8a7af74e6d45c14d9f00ea8260ebcc45a76938724053e49699f3beba9377";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "376ef1b8f5ef8d1b48e6bee981206e7a277925ee9dded3722fce6c49a8b964ed";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-workmail-1.6.1-r0-2a2845da22c14234dff32245c57533ada2cd0319a53f04c74317657c28d705c0.nix;
        revNum = 0;
        sha256 = "2a2845da22c14234dff32245c57533ada2cd0319a53f04c74317657c28d705c0";
      };
      r1 = {
        nix = import ../hackage/amazonka-workmail-1.6.1-r1-06babaa04611c1b394260c2c5c597422fcbd980161256d8de62b876851c62b38.nix;
        revNum = 1;
        sha256 = "06babaa04611c1b394260c2c5c597422fcbd980161256d8de62b876851c62b38";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "55d2e296fec3b31e7f15020220a6d9e9e9047c512ad6c172ed655e6a3419ac59";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-workmail-2.0-r0-3f3c4446933086610a0498fd0bc213b0d7cfd4d810966b6533fda5b54091ced5.nix;
        revNum = 0;
        sha256 = "3f3c4446933086610a0498fd0bc213b0d7cfd4d810966b6533fda5b54091ced5";
      };
      r1 = {
        nix = import ../hackage/amazonka-workmail-2.0-r1-d9a7fd6e8e13041691e953c21bd424a1bbb67137c971edef4a904562962386ef.nix;
        revNum = 1;
        sha256 = "d9a7fd6e8e13041691e953c21bd424a1bbb67137c971edef4a904562962386ef";
      };
      default = "r1";
    };
  };
}