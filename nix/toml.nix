{
  "0.1.2" = {
    sha256 = "a863d9dd23913d2b2d1d02e2d1565a95907f3a412368601252612a74171772e0";
    revisions = {
      r0 = {
        nix = import ../hackage/toml-0.1.2-r0-bb189681c8762ade83d2523bdb99c5d98f23274a6d486217b59adee96a923bd3.nix;
        revNum = 0;
        sha256 = "bb189681c8762ade83d2523bdb99c5d98f23274a6d486217b59adee96a923bd3";
      };
      r1 = {
        nix = import ../hackage/toml-0.1.2-r1-31f01191fda44ea83bce80c15427f257eb5aa9de8b454520162761fbfe84b044.nix;
        revNum = 1;
        sha256 = "31f01191fda44ea83bce80c15427f257eb5aa9de8b454520162761fbfe84b044";
      };
      default = "r1";
    };
  };
  "0.1.3" = {
    sha256 = "c29946c58656443d0dbf18aad0582707311c691ab624a63c8f9614a4950c7e71";
    revisions = {
      r0 = {
        nix = import ../hackage/toml-0.1.3-r0-7afffff63198b978299b4eee770e8a43d98dadb47dc0b0dee3467e8479dedc0d.nix;
        revNum = 0;
        sha256 = "7afffff63198b978299b4eee770e8a43d98dadb47dc0b0dee3467e8479dedc0d";
      };
      r1 = {
        nix = import ../hackage/toml-0.1.3-r1-4eac5e516c0e461ceef73150d7a248bce199fc02183074a622c0dab17513ca20.nix;
        revNum = 1;
        sha256 = "4eac5e516c0e461ceef73150d7a248bce199fc02183074a622c0dab17513ca20";
      };
      r2 = {
        nix = import ../hackage/toml-0.1.3-r2-bb77359e3bbe78340625c664451ac16a36b2854703f9988cf60d9fd658d4f4e3.nix;
        revNum = 2;
        sha256 = "bb77359e3bbe78340625c664451ac16a36b2854703f9988cf60d9fd658d4f4e3";
      };
      default = "r2";
    };
  };
}