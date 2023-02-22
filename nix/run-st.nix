{
  "0.1.0.0" = {
    sha256 = "ea9c68bcd5786d2feaaed17cf73f2a6012599b5b5b5b70c2755f9d87f0c4c53f";
    revisions = {
      r0 = {
        nix = import ../hackage/run-st-0.1.0.0-r0-ce73f783972aebfdfbf7b577f9cb7877f4f975bc31e9d5aa873fda809e8c8a16.nix;
        revNum = 0;
        sha256 = "ce73f783972aebfdfbf7b577f9cb7877f4f975bc31e9d5aa873fda809e8c8a16";
        };
      default = "r0";
      };
    };
  "0.1.1.0" = {
    sha256 = "6eb78090904ca63ce54e753853b0951475363abbe3d1977b053e0bb179472e86";
    revisions = {
      r0 = {
        nix = import ../hackage/run-st-0.1.1.0-r0-a43245bb23984089016772481bf52bfe63eaff0c5040303f69c9b15e80872fdc.nix;
        revNum = 0;
        sha256 = "a43245bb23984089016772481bf52bfe63eaff0c5040303f69c9b15e80872fdc";
        };
      r1 = {
        nix = import ../hackage/run-st-0.1.1.0-r1-a1d0b946fe13ce2dab9efc0e79fab4ed8674363566dd2894501a1194f6279595.nix;
        revNum = 1;
        sha256 = "a1d0b946fe13ce2dab9efc0e79fab4ed8674363566dd2894501a1194f6279595";
        };
      default = "r1";
      };
    };
  }