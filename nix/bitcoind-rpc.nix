{
  "0.1.0.0" = {
    sha256 = "48064b43d64a115d50f546df5c5e03cc1f66969e5dc71d4f4d0debff692277a8";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoind-rpc-0.1.0.0-r0-70b82ef4d03f0cf2525862ccbac311df932b4c37c74dd87c37a766683a22ad2d.nix;
        revNum = 0;
        sha256 = "70b82ef4d03f0cf2525862ccbac311df932b4c37c74dd87c37a766683a22ad2d";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "2c27fb7dd1e1ffe8e54d74b08a862c6fa76f4b175b722b66633330b8da2abe78";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoind-rpc-0.2.0.0-r0-5dff28038f905199625b04ff8c03a9a45e0f19c09d155a1c2ed22998a983274a.nix;
        revNum = 0;
        sha256 = "5dff28038f905199625b04ff8c03a9a45e0f19c09d155a1c2ed22998a983274a";
        };
      r1 = {
        nix = import ../hackage/bitcoind-rpc-0.2.0.0-r1-2765ce5b507379b9dc5e37724edaebccc55600752a5d4544fe6b6c3140f5e47d.nix;
        revNum = 1;
        sha256 = "2765ce5b507379b9dc5e37724edaebccc55600752a5d4544fe6b6c3140f5e47d";
        };
      default = "r1";
      };
    };
  }