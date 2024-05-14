{
  "2.0" = {
    sha256 = "1c490d200eacef587f6291d8b336397d5a6d36ac98ebfd05720b0c14487dacf7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-imagebuilder-2.0-r0-544ff0f0fd60ef2dc2867e99fd7170b7a31eea6a74dc693fcd792d6c1690276c.nix;
        revNum = 0;
        sha256 = "544ff0f0fd60ef2dc2867e99fd7170b7a31eea6a74dc693fcd792d6c1690276c";
      };
      r1 = {
        nix = import ../hackage/amazonka-imagebuilder-2.0-r1-f17efe2d660bc448de263994e8cea927cc689e40e2e4e18577d88b2f58150fc8.nix;
        revNum = 1;
        sha256 = "f17efe2d660bc448de263994e8cea927cc689e40e2e4e18577d88b2f58150fc8";
      };
      default = "r1";
    };
  };
}