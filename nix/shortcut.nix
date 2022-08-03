{
  "0.1" = {
    sha256 = "0a29d75028071579ad855b592cce687fc9f0ad2e78aeaec36152082db9f92ff1";
    revisions = {
      r0 = {
        nix = import ../hackage/shortcut-0.1-r0-2fe8cc62fbe719076b54361606735d28c8ef4ee1893c8d4aec8d6333addbea5f.nix;
        revNum = 0;
        sha256 = "2fe8cc62fbe719076b54361606735d28c8ef4ee1893c8d4aec8d6333addbea5f";
        };
      r1 = {
        nix = import ../hackage/shortcut-0.1-r1-87266ab5d90db03edb789b97534f17901c77b435d95a6724e7832bebef00d793.nix;
        revNum = 1;
        sha256 = "87266ab5d90db03edb789b97534f17901c77b435d95a6724e7832bebef00d793";
        };
      default = "r1";
      };
    };
  }