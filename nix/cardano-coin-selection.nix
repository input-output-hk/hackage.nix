{
  "1.0.0" = {
    sha256 = "73c1138ee72358eff35e866bd1077cffbecb9f8ddbdf3e601858eacfd6120b68";
    revisions = {
      r0 = {
        nix = import ../hackage/cardano-coin-selection-1.0.0-r0-3d965d9b01ef6f61b31e34ccf18aedb44611b9e3a56a4e094e3027e15c7e7ac5.nix;
        revNum = 0;
        sha256 = "3d965d9b01ef6f61b31e34ccf18aedb44611b9e3a56a4e094e3027e15c7e7ac5";
      };
      r1 = {
        nix = import ../hackage/cardano-coin-selection-1.0.0-r1-810e0984b5bd369aa3ef235a37cc10ed3fde959645a7dce940ca5a8cb00eb5b1.nix;
        revNum = 1;
        sha256 = "810e0984b5bd369aa3ef235a37cc10ed3fde959645a7dce940ca5a8cb00eb5b1";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "4a6230041f9e274e97da0a5a3516fc3c9f1d5668b0141e24de046ff04a9b76db";
    revisions = {
      r0 = {
        nix = import ../hackage/cardano-coin-selection-1.0.1-r0-d429ea2b7c64442b42655cb7a6ed228a6fb94e940245ba29c16010ad67420591.nix;
        revNum = 0;
        sha256 = "d429ea2b7c64442b42655cb7a6ed228a6fb94e940245ba29c16010ad67420591";
      };
      default = "r0";
    };
  };
}