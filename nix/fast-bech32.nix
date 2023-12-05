{
  "1.0.0" = {
    sha256 = "c93335b7247fec78696c33b1bfc8e465fcb1647efb9a95f9a836bf06664d6ecf";
    revisions = {
      r0 = {
        nix = import ../hackage/fast-bech32-1.0.0-r0-848090b29c2eded65f66deeb0d7ac1975cbb6e6148ae1aac2bb81b0792b857de.nix;
        revNum = 0;
        sha256 = "848090b29c2eded65f66deeb0d7ac1975cbb6e6148ae1aac2bb81b0792b857de";
        };
      r1 = {
        nix = import ../hackage/fast-bech32-1.0.0-r1-3d92ae075d8121ea46527fb4a8b2076225d740a0b84ce28a00bfea3d9fa3d880.nix;
        revNum = 1;
        sha256 = "3d92ae075d8121ea46527fb4a8b2076225d740a0b84ce28a00bfea3d9fa3d880";
        };
      default = "r1";
      };
    };
  "1.0.1" = {
    sha256 = "4db54be773eebaec101905ec6ddc5e53846e57aff518b8cdc2d3397ca541a960";
    revisions = {
      r0 = {
        nix = import ../hackage/fast-bech32-1.0.1-r0-2c104584a56b4d77efb6cb59fe3b980806c6ca2b088e4de08317e309343ce1ed.nix;
        revNum = 0;
        sha256 = "2c104584a56b4d77efb6cb59fe3b980806c6ca2b088e4de08317e309343ce1ed";
        };
      default = "r0";
      };
    };
  }