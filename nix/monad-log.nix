{
  "0.1.0.0" = {
    sha256 = "853e020ab73eba9469c154dd30ac169eec0a4ae4b7c764125c654819e24acff6";
    revisions = {
      r0 = {
        nix = import ../hackage/monad-log-0.1.0.0-r0-20b6484ff36452043166cadfc11459f87918c794dda306513d240ee38c056be5.nix;
        revNum = 0;
        sha256 = "20b6484ff36452043166cadfc11459f87918c794dda306513d240ee38c056be5";
        };
      default = "r0";
      };
    };
  "0.1.1.0" = {
    sha256 = "34000c62083e4b32c59a8a7a731608a573ce3fec97a4cf34d16cf77c2e7e8bc1";
    revisions = {
      r0 = {
        nix = import ../hackage/monad-log-0.1.1.0-r0-773c1c82f726323a0f5ea43c4395b22dcbc27308c69d9cfc881070f7f67b97b0.nix;
        revNum = 0;
        sha256 = "773c1c82f726323a0f5ea43c4395b22dcbc27308c69d9cfc881070f7f67b97b0";
        };
      r1 = {
        nix = import ../hackage/monad-log-0.1.1.0-r1-35297bec3e2c8483b8e291ff62e5cb5d2aa01e24a7563812648f213e1b1eace2.nix;
        revNum = 1;
        sha256 = "35297bec3e2c8483b8e291ff62e5cb5d2aa01e24a7563812648f213e1b1eace2";
        };
      default = "r1";
      };
    };
  }