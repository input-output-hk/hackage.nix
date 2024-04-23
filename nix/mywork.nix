{
  "1.0.0.0" = {
    sha256 = "0a54ac144a3d623319275c756cb4c6f3bbc25de291c3a00041e70164c0d6b176";
    revisions = {
      r0 = {
        nix = import ../hackage/mywork-1.0.0.0-r0-ab2fa51d435152cdce2398291befadba4b2ddfa3083a0c3cdb6d1fad8a259b01.nix;
        revNum = 0;
        sha256 = "ab2fa51d435152cdce2398291befadba4b2ddfa3083a0c3cdb6d1fad8a259b01";
      };
      default = "r0";
    };
  };
  "1.0.1.0" = {
    sha256 = "c64af75acb88fa33589e86a304d2b747594205afb75840124d628f869c608f55";
    revisions = {
      r0 = {
        nix = import ../hackage/mywork-1.0.1.0-r0-0fa1c730e62110311a93f953fa5dc325921053dce58cc5d559f0a5058704474a.nix;
        revNum = 0;
        sha256 = "0fa1c730e62110311a93f953fa5dc325921053dce58cc5d559f0a5058704474a";
      };
      default = "r0";
    };
  };
}