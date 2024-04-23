{
  "96.0.0.0" = {
    sha256 = "d6487af006485dc664ce174ef3d4d7a72c7a628a78fd5c463d2c720ded820b20";
    revisions = {
      r0 = {
        nix = import ../hackage/hz3-96.0.0.0-r0-5a14176c86248206ccf9f40ea1b4c348dba85676b9dc800349dbf406393ccacb.nix;
        revNum = 0;
        sha256 = "5a14176c86248206ccf9f40ea1b4c348dba85676b9dc800349dbf406393ccacb";
      };
      r1 = {
        nix = import ../hackage/hz3-96.0.0.0-r1-688ca22fd0218566200fcf022e7be6ffee4141c2f8a18876ce4a0027bcbfd3fc.nix;
        revNum = 1;
        sha256 = "688ca22fd0218566200fcf022e7be6ffee4141c2f8a18876ce4a0027bcbfd3fc";
      };
      r2 = {
        nix = import ../hackage/hz3-96.0.0.0-r2-dfa1eab31a49181e4b2e8b502d093bfb9cd2b13a81d3492a0e74936f3cbb010b.nix;
        revNum = 2;
        sha256 = "dfa1eab31a49181e4b2e8b502d093bfb9cd2b13a81d3492a0e74936f3cbb010b";
      };
      r3 = {
        nix = import ../hackage/hz3-96.0.0.0-r3-e043f47eae446b0fcdcd1de1db460245914aacee2c104b753bfa22707217a636.nix;
        revNum = 3;
        sha256 = "e043f47eae446b0fcdcd1de1db460245914aacee2c104b753bfa22707217a636";
      };
      default = "r3";
    };
  };
}