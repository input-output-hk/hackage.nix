{
  "0.1.0.0" = {
    sha256 = "3c25b580e9131c201d9610b9470483050b33f3756246727ff89ba95135f181f7";
    revisions = {
      r0 = {
        nix = import ../hackage/ChibiHash-0.1.0.0-r0-bfe748b5303add060be2616e0c338398f1e2fc27237186a6d662997d1d2686e7.nix;
        revNum = 0;
        sha256 = "bfe748b5303add060be2616e0c338398f1e2fc27237186a6d662997d1d2686e7";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "9fcbd69496b9f49e0fa37a04a373baaee4c7e57fb3bc1372969672af8d6c6d08";
    revisions = {
      r0 = {
        nix = import ../hackage/ChibiHash-0.2.0.0-r0-0572f3151ea939ff192904546cf945480c56bd0f49ec29a6ff23b4642f05b391.nix;
        revNum = 0;
        sha256 = "0572f3151ea939ff192904546cf945480c56bd0f49ec29a6ff23b4642f05b391";
      };
      r1 = {
        nix = import ../hackage/ChibiHash-0.2.0.0-r1-5602454c7f4e9ba6493aba6e28a7ce48d11cd2f52b4128984d5df4b131946e5f.nix;
        revNum = 1;
        sha256 = "5602454c7f4e9ba6493aba6e28a7ce48d11cd2f52b4128984d5df4b131946e5f";
      };
      default = "r1";
    };
  };
}