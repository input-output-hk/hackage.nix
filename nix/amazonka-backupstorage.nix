{
  "2.0" = {
    sha256 = "de18b234873744b23e1a5512c491c7e1507a21b87fa416ef82cec4df01e9d321";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-backupstorage-2.0-r0-8dcd82e8697adbae1641f4fcaeaa85b1cff7b85c49846cf5be654e80e99243ed.nix;
        revNum = 0;
        sha256 = "8dcd82e8697adbae1641f4fcaeaa85b1cff7b85c49846cf5be654e80e99243ed";
      };
      r1 = {
        nix = import ../hackage/amazonka-backupstorage-2.0-r1-7632e8d66cc1ea1e2fa8de507088841bb40b730dcf86e8273042f63b314ce73d.nix;
        revNum = 1;
        sha256 = "7632e8d66cc1ea1e2fa8de507088841bb40b730dcf86e8273042f63b314ce73d";
      };
      default = "r1";
    };
  };
}