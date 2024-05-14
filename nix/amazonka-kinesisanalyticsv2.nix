{
  "2.0" = {
    sha256 = "71f599a4e2364cbed0c04ae0c10d046eae03d6fdd5bf2c06e1235eda1711be68";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kinesisanalyticsv2-2.0-r0-8023d28ca4658624ad3042b84dcf5a8360b0553e9a63a9b0ee463471183917b9.nix;
        revNum = 0;
        sha256 = "8023d28ca4658624ad3042b84dcf5a8360b0553e9a63a9b0ee463471183917b9";
      };
      r1 = {
        nix = import ../hackage/amazonka-kinesisanalyticsv2-2.0-r1-7eaac23fe0a09073be79bff78e0b82cb6e5b7dbf07aa7441e81a9bdf564e3ee8.nix;
        revNum = 1;
        sha256 = "7eaac23fe0a09073be79bff78e0b82cb6e5b7dbf07aa7441e81a9bdf564e3ee8";
      };
      default = "r1";
    };
  };
}