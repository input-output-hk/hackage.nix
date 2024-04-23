{
  "0.1.0" = {
    sha256 = "1fe62fb12ccfcaa508bde449c221164c607f9ec298e75db0b2fc63436ee2b978";
    revisions = {
      r0 = {
        nix = import ../hackage/cfopu-0.1.0-r0-26e402913ae8fd3e960fdb56af39662da472f26608bfb8ccd1709c7de16323db.nix;
        revNum = 0;
        sha256 = "26e402913ae8fd3e960fdb56af39662da472f26608bfb8ccd1709c7de16323db";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "7fac407bbab277e0dc28e4b3ffcf5f2e35ddbefa615af256406086d6188da1ed";
    revisions = {
      r0 = {
        nix = import ../hackage/cfopu-1.0.0-r0-372a758227796025672bb315cdcb25a7c19add7e47c29fb617120ee791e541c2.nix;
        revNum = 0;
        sha256 = "372a758227796025672bb315cdcb25a7c19add7e47c29fb617120ee791e541c2";
      };
      default = "r0";
    };
  };
}