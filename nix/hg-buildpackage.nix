{
  "1.0.1" = {
    sha256 = "5edc8583dd0aed16453c3bbc9710b3c84bfa309d1f1af02a98aadd9f557d6989";
    revisions = {
      r0 = {
        nix = import ../hackage/hg-buildpackage-1.0.1-r0-60637a0d353ebd56068270ba70268083b71dde38c525eef8960cc042e341f662.nix;
        revNum = 0;
        sha256 = "60637a0d353ebd56068270ba70268083b71dde38c525eef8960cc042e341f662";
        };
      default = "r0";
      };
    };
  "1.0.4" = {
    sha256 = "186257f596849e789a4f3a17c574692e717d427510e332ae24b1673e1a5d5133";
    revisions = {
      r0 = {
        nix = import ../hackage/hg-buildpackage-1.0.4-r0-e760a66d05a613324fc6f2d309bb649b7f7e3bc06f2a1a60a418cf6ad31662cd.nix;
        revNum = 0;
        sha256 = "e760a66d05a613324fc6f2d309bb649b7f7e3bc06f2a1a60a418cf6ad31662cd";
        };
      default = "r0";
      };
    };
  }