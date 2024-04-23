{
  "0.1.0.0" = {
    sha256 = "b5cf36c5ccf72a400bc8dca3a983c3a4b65a7788fbd07eca93e5b23dca27f1bd";
    revisions = {
      r0 = {
        nix = import ../hackage/data-extend-generic-0.1.0.0-r0-3a20dd6e247fe6a31b14665c5adb31a40360ec7ab9e43aca30a0390a3e9c9b41.nix;
        revNum = 0;
        sha256 = "3a20dd6e247fe6a31b14665c5adb31a40360ec7ab9e43aca30a0390a3e9c9b41";
      };
      r1 = {
        nix = import ../hackage/data-extend-generic-0.1.0.0-r1-b80237d496b098c3974137c53c7e0f7012ea60baf084a85b3471dcef5c2cf5fa.nix;
        revNum = 1;
        sha256 = "b80237d496b098c3974137c53c7e0f7012ea60baf084a85b3471dcef5c2cf5fa";
      };
      r2 = {
        nix = import ../hackage/data-extend-generic-0.1.0.0-r2-6d1bf0f2f19daf06b81fe4108a37bf889c9b96905920d3aa04846f0b5d05b6b3.nix;
        revNum = 2;
        sha256 = "6d1bf0f2f19daf06b81fe4108a37bf889c9b96905920d3aa04846f0b5d05b6b3";
      };
      default = "r2";
    };
  };
}