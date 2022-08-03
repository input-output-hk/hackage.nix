{
  "0.0.1" = {
    sha256 = "3870f1db7dcc97e4ab07ec4996066301d19fb369d8c1610e9b05e506442ae81f";
    revisions = {
      r0 = {
        nix = import ../hackage/hspec-tables-0.0.1-r0-282ed4e23fdf2bf7356607aca38e3d547a40a4dcedfaf55627b285ec5d3fccd0.nix;
        revNum = 0;
        sha256 = "282ed4e23fdf2bf7356607aca38e3d547a40a4dcedfaf55627b285ec5d3fccd0";
        };
      r1 = {
        nix = import ../hackage/hspec-tables-0.0.1-r1-1f38a282c1f859bdc9522f2ff7b012b58c852c97ece0235307f8d6f0f71420d2.nix;
        revNum = 1;
        sha256 = "1f38a282c1f859bdc9522f2ff7b012b58c852c97ece0235307f8d6f0f71420d2";
        };
      default = "r1";
      };
    };
  }