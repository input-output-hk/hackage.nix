{
  "2.0" = {
    sha256 = "d62120c408dd601317672bcedddb2755c695b9f58effd7bfadf160239274c047";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-securitylake-2.0-r0-828154aaaa79503ac6a735f8f451db148cbdca01739ca305592b70bd2dc65bab.nix;
        revNum = 0;
        sha256 = "828154aaaa79503ac6a735f8f451db148cbdca01739ca305592b70bd2dc65bab";
      };
      r1 = {
        nix = import ../hackage/amazonka-securitylake-2.0-r1-226965ce7fdd32ad9d3ddc47f841301447797603693d3b3d148f0f0ad15ffda1.nix;
        revNum = 1;
        sha256 = "226965ce7fdd32ad9d3ddc47f841301447797603693d3b3d148f0f0ad15ffda1";
      };
      default = "r1";
    };
  };
}