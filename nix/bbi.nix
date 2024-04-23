{
  "0.1.0" = {
    sha256 = "4fd495f092457cca89e8e4562f735022507085b0c928b7d8fe92ea020fa32878";
    revisions = {
      r0 = {
        nix = import ../hackage/bbi-0.1.0-r0-1897321664cdd035273d13c48bcfb0aed680261bef374fe37e830e1760af2ed1.nix;
        revNum = 0;
        sha256 = "1897321664cdd035273d13c48bcfb0aed680261bef374fe37e830e1760af2ed1";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "e3b7c36797319d4edbea51e187f7bc32f59dd7c13496ecebd31fdf699e8539d5";
    revisions = {
      r0 = {
        nix = import ../hackage/bbi-0.1.1-r0-236883c16abae35586bb3b657839188923976e1146c424c58e72ad27ed03b264.nix;
        revNum = 0;
        sha256 = "236883c16abae35586bb3b657839188923976e1146c424c58e72ad27ed03b264";
      };
      default = "r0";
    };
  };
}