{
  "2.0" = {
    sha256 = "0df42fb607b67de38bb40ddaa2f3f7bf61760587e1bc686746ac0e9b6d463b4a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-snow-device-management-2.0-r0-9f4bc15a24bc8022082608a261c94744f420b1a5b885055c09b43f66ec546f43.nix;
        revNum = 0;
        sha256 = "9f4bc15a24bc8022082608a261c94744f420b1a5b885055c09b43f66ec546f43";
      };
      r1 = {
        nix = import ../hackage/amazonka-snow-device-management-2.0-r1-c59d7a48d87c4f3c084123268862aebdd6c368c66413628359d7f4fc0f68aed3.nix;
        revNum = 1;
        sha256 = "c59d7a48d87c4f3c084123268862aebdd6c368c66413628359d7f4fc0f68aed3";
      };
      default = "r1";
    };
  };
}