{
  "0.1" = {
    sha256 = "42b9e4a084cefa647ee71c3de46fe8109926cc8c2e3a42f918c9dd3a746019c8";
    revisions = {
      r0 = {
        nix = import ../hackage/skew-list-0.1-r0-dafb46cd4f12ffef31ab11be9f8842bf363b22864cf50694b76d12be30d349f7.nix;
        revNum = 0;
        sha256 = "dafb46cd4f12ffef31ab11be9f8842bf363b22864cf50694b76d12be30d349f7";
        };
      r1 = {
        nix = import ../hackage/skew-list-0.1-r1-5d81ffe85408415208fce3a2ef9aa99dda060d420c46c5825e7d05468c66a43c.nix;
        revNum = 1;
        sha256 = "5d81ffe85408415208fce3a2ef9aa99dda060d420c46c5825e7d05468c66a43c";
        };
      default = "r1";
      };
    };
  }