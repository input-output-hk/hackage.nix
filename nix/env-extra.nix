{
  "1.0.0.0" = {
    sha256 = "f458dba11956fb6605af025179d20702a555cd1112fb6a40408271c84f7fae8f";
    revisions = {
      r0 = {
        nix = import ../hackage/env-extra-1.0.0.0-r0-9e0b7c3cd28a5d7509ea642af21fea1307ecdb953548899487692fd4394be7d6.nix;
        revNum = 0;
        sha256 = "9e0b7c3cd28a5d7509ea642af21fea1307ecdb953548899487692fd4394be7d6";
      };
      r1 = {
        nix = import ../hackage/env-extra-1.0.0.0-r1-2b5f58f5756dedf9956c2f5738920b082ab8e08a0b62b902b67f5134cecad00d.nix;
        revNum = 1;
        sha256 = "2b5f58f5756dedf9956c2f5738920b082ab8e08a0b62b902b67f5134cecad00d";
      };
      default = "r1";
    };
  };
}