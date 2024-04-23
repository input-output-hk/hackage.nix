{
  "0.1.0.0" = {
    sha256 = "02e3e61c3cac059c275bb5fa8b024697e522bb2339d10bb23c61430c9db27877";
    revisions = {
      r0 = {
        nix = import ../hackage/finite-semigroups-0.1.0.0-r0-e25244f75172f43df5f31691cb0d58dedbd1682e0e58790391fffae237cba600.nix;
        revNum = 0;
        sha256 = "e25244f75172f43df5f31691cb0d58dedbd1682e0e58790391fffae237cba600";
      };
      r1 = {
        nix = import ../hackage/finite-semigroups-0.1.0.0-r1-c5930812e742c999363d876c60cb5f95c72b50cb46c3cd76d0f30020d27062c1.nix;
        revNum = 1;
        sha256 = "c5930812e742c999363d876c60cb5f95c72b50cb46c3cd76d0f30020d27062c1";
      };
      default = "r1";
    };
  };
}