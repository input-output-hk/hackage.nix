{
  "1.0.0" = {
    sha256 = "51202f91781835a085eef500380f298f543bd80b9682f1d31969f267b2a44272";
    revisions = {
      r0 = {
        nix = import ../hackage/marionette-effectful-1.0.0-r0-03bba35542b468202f890b77e5c997096832322d8a45e6859c04feb5039397ba.nix;
        revNum = 0;
        sha256 = "03bba35542b468202f890b77e5c997096832322d8a45e6859c04feb5039397ba";
      };
      r1 = {
        nix = import ../hackage/marionette-effectful-1.0.0-r1-3a3980f3453e3aed4c6309d56b9489685a68e683c9461209814f2852b10c3154.nix;
        revNum = 1;
        sha256 = "3a3980f3453e3aed4c6309d56b9489685a68e683c9461209814f2852b10c3154";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "903e9e2d501990981ae94b749fddfa01b7f93ba012070ef15c835a8aa1be2668";
    revisions = {
      r0 = {
        nix = import ../hackage/marionette-effectful-1.0.1-r0-16ed4e64d135455f1d3d6b757bd05cc87f71d601b9ec8b83c7b4cb38c23e0927.nix;
        revNum = 0;
        sha256 = "16ed4e64d135455f1d3d6b757bd05cc87f71d601b9ec8b83c7b4cb38c23e0927";
      };
      default = "r0";
    };
  };
}