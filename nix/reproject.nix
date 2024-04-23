{
  "0.1.0.0" = {
    sha256 = "cb411a232592aee5904aa162ff0a02eaef529e4dbb742336f0655143f52bc596";
    revisions = {
      r0 = {
        nix = import ../hackage/reproject-0.1.0.0-r0-841cd26df7163ddf7c9f32cbd408ee241e71a8924b16b3c8db4127b60cf35a59.nix;
        revNum = 0;
        sha256 = "841cd26df7163ddf7c9f32cbd408ee241e71a8924b16b3c8db4127b60cf35a59";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "94d7b7bda403e727e65c419e8508a780f0e5e5da0cde85e6ed4d34489b2b35c0";
    revisions = {
      r0 = {
        nix = import ../hackage/reproject-0.2.0.0-r0-5a11b9061c13b344b58105939d1701cac2eb28aab2eedaf114150934cfe12605.nix;
        revNum = 0;
        sha256 = "5a11b9061c13b344b58105939d1701cac2eb28aab2eedaf114150934cfe12605";
      };
      default = "r0";
    };
  };
}