{
  "0.1.0.0" = {
    sha256 = "4e65146d6ce18d443e7f3388e6689882453ea4dfeca15611c46b025cbb50d667";
    revisions = {
      r0 = {
        nix = import ../hackage/gev-lib-0.1.0.0-r0-ea23327514ed6e6739417057644469a8b579b2e26b973afaaedf490eeb3449c3.nix;
        revNum = 0;
        sha256 = "ea23327514ed6e6739417057644469a8b579b2e26b973afaaedf490eeb3449c3";
        };
      r1 = {
        nix = import ../hackage/gev-lib-0.1.0.0-r1-02b9828bf298976378a200b8d8442cb4af528c99f09063c1a200ee4ae3069ae1.nix;
        revNum = 1;
        sha256 = "02b9828bf298976378a200b8d8442cb4af528c99f09063c1a200ee4ae3069ae1";
        };
      r2 = {
        nix = import ../hackage/gev-lib-0.1.0.0-r2-ca2243abfd5df275c841a1f0a76a9bbbeb943d007b82eb3ebbeb38fba0c7c938.nix;
        revNum = 2;
        sha256 = "ca2243abfd5df275c841a1f0a76a9bbbeb943d007b82eb3ebbeb38fba0c7c938";
        };
      default = "r2";
      };
    };
  "0.2.0.0" = {
    sha256 = "45b8f738569ab192920234bbd964779850f9d70c8ff18a4de348abb4860d99be";
    revisions = {
      r0 = {
        nix = import ../hackage/gev-lib-0.2.0.0-r0-9f0df108e25876914de83b866a186065eb5cbb560892b943f650b94dd4179026.nix;
        revNum = 0;
        sha256 = "9f0df108e25876914de83b866a186065eb5cbb560892b943f650b94dd4179026";
        };
      default = "r0";
      };
    };
  "0.2.0.1" = {
    sha256 = "34b11a8ada08daf8df368acb01fa14c1e02672c2a58807d96d4655c6bda881e2";
    revisions = {
      r0 = {
        nix = import ../hackage/gev-lib-0.2.0.1-r0-618e74418a90f3b67fa83f1bc2752ffe07ff710e9eff3a69baff9e97b9862739.nix;
        revNum = 0;
        sha256 = "618e74418a90f3b67fa83f1bc2752ffe07ff710e9eff3a69baff9e97b9862739";
        };
      default = "r0";
      };
    };
  }