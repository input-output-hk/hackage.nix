{
  "1.0" = {
    sha256 = "7d9ddcb918e536c758b62461951ec3e5b0f08305fb0ae55c2c5d223a8f75330a";
    revisions = {
      r0 = {
        nix = import ../hackage/pngload-fixed-1.0-r0-1929dc6f16a91177cae3216b24648725da23c3bed3cb98f4263dcc474e895ef6.nix;
        revNum = 0;
        sha256 = "1929dc6f16a91177cae3216b24648725da23c3bed3cb98f4263dcc474e895ef6";
      };
      r1 = {
        nix = import ../hackage/pngload-fixed-1.0-r1-2f6d55581eedb22ba422569759a27347834274bb53c20403908b4219d79dc426.nix;
        revNum = 1;
        sha256 = "2f6d55581eedb22ba422569759a27347834274bb53c20403908b4219d79dc426";
      };
      default = "r1";
    };
  };
}