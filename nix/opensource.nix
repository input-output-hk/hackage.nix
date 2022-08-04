{
  "0.1.0.0" = {
    sha256 = "3459b6ce70fb8fc8bdf9d9f6ed0476724cb8a11b673fc60422edac2376620127";
    revisions = {
      r0 = {
        nix = import ../hackage/opensource-0.1.0.0-r0-bf43f2cad2cd3de6fef280b567f76c1782f770cb3e1e63a25dd54c748d8f563b.nix;
        revNum = 0;
        sha256 = "bf43f2cad2cd3de6fef280b567f76c1782f770cb3e1e63a25dd54c748d8f563b";
        };
      r1 = {
        nix = import ../hackage/opensource-0.1.0.0-r1-e666a8a79e0dc20112d7eafdbdc8a87f2486dfcdd3cac51f5e523bd34e4deb0b.nix;
        revNum = 1;
        sha256 = "e666a8a79e0dc20112d7eafdbdc8a87f2486dfcdd3cac51f5e523bd34e4deb0b";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "1ef36be24b2a1d2aee892891e6c7bd975830c38900dbb96a80e5df95c37c5482";
    revisions = {
      r0 = {
        nix = import ../hackage/opensource-0.1.1.0-r0-ea58bd83950f76bfa7d0bd311c075852a9814b459496704a83696f1aa7a8b73a.nix;
        revNum = 0;
        sha256 = "ea58bd83950f76bfa7d0bd311c075852a9814b459496704a83696f1aa7a8b73a";
        };
      default = "r0";
      };
    };
  }