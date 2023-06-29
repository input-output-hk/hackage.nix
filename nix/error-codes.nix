{
  "0.1.0.0" = {
    sha256 = "7242c89f962a482a89fe6f9b58c0abb2cf2fb593dc22ed805d5a355a66dfe8c4";
    revisions = {
      r0 = {
        nix = import ../hackage/error-codes-0.1.0.0-r0-9cf429e6f271ede2fa73dcba782748b329bd3470787ff04b1177bb256901faa3.nix;
        revNum = 0;
        sha256 = "9cf429e6f271ede2fa73dcba782748b329bd3470787ff04b1177bb256901faa3";
        };
      r1 = {
        nix = import ../hackage/error-codes-0.1.0.0-r1-59d3e62dc6037d20074dfee425608c5ab933ec20f75d1b889845ae87f4fcf985.nix;
        revNum = 1;
        sha256 = "59d3e62dc6037d20074dfee425608c5ab933ec20f75d1b889845ae87f4fcf985";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "2de8d0b9e62ddbfcf14cc3a9682dcd0684cd0cd271491fd732e5f36dcc23c135";
    revisions = {
      r0 = {
        nix = import ../hackage/error-codes-0.1.0.1-r0-3a36d70c6c306a206eb04a5ee24f2f9d0e81ad08f44965985785e7383deb6bc1.nix;
        revNum = 0;
        sha256 = "3a36d70c6c306a206eb04a5ee24f2f9d0e81ad08f44965985785e7383deb6bc1";
        };
      r1 = {
        nix = import ../hackage/error-codes-0.1.0.1-r1-b4226665c58211562d87fda0ad27e2acf64fe7da7bd1547cca7db66dbec5466c.nix;
        revNum = 1;
        sha256 = "b4226665c58211562d87fda0ad27e2acf64fe7da7bd1547cca7db66dbec5466c";
        };
      r2 = {
        nix = import ../hackage/error-codes-0.1.0.1-r2-ad973c4afc3f8316d846918a8ffdce37fe32d0ee7210a95a188cd48f223a4d61.nix;
        revNum = 2;
        sha256 = "ad973c4afc3f8316d846918a8ffdce37fe32d0ee7210a95a188cd48f223a4d61";
        };
      default = "r2";
      };
    };
  }