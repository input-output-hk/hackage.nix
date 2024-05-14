{
  "2.0" = {
    sha256 = "5b4eb9ba800f27f210ca002e74e8dc0788524f24d0b05142593c2305bad7789a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-rolesanywhere-2.0-r0-5e253e508777b79f92ee61c8db6d07e1e7c42460ccbc671edde1eb73ec641e1a.nix;
        revNum = 0;
        sha256 = "5e253e508777b79f92ee61c8db6d07e1e7c42460ccbc671edde1eb73ec641e1a";
      };
      r1 = {
        nix = import ../hackage/amazonka-rolesanywhere-2.0-r1-a368596f2f1b7f01a7afdccdc0463534a75973b9723fb9464c371768c1446c27.nix;
        revNum = 1;
        sha256 = "a368596f2f1b7f01a7afdccdc0463534a75973b9723fb9464c371768c1446c27";
      };
      default = "r1";
    };
  };
}