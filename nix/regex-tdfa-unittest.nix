{
  "1.1" = {
    sha256 = "ac454b981b19cbbf443918ccb9d44508056e5e3be28fc90adb1d1b4287622cad";
    revisions = {
      r0 = {
        nix = import ../hackage/regex-tdfa-unittest-1.1-r0-ce42522fe10d057b95883f88eda15f7b909bc9e9effefc20da4e53c7c600eeb2.nix;
        revNum = 0;
        sha256 = "ce42522fe10d057b95883f88eda15f7b909bc9e9effefc20da4e53c7c600eeb2";
        };
      r1 = {
        nix = import ../hackage/regex-tdfa-unittest-1.1-r1-c80264ddd3881da77e28b675d93698a2f7af108127cea373b3c0932f2c1171a1.nix;
        revNum = 1;
        sha256 = "c80264ddd3881da77e28b675d93698a2f7af108127cea373b3c0932f2c1171a1";
        };
      default = "r1";
      };
    };
  }