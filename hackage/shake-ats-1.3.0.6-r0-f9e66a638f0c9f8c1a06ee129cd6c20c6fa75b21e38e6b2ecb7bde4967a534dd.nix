{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "shake-ats"; version = "1.3.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/shake-ats#readme";
      url = "";
      synopsis = "Utilities for building ATS projects with shake";
      description = "Various helper functions for building [ATS](http://www.ats-lang.org/) with the [shake](http://shakebuild.com/) library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."language-ats" or ((hsPkgs.pkgs-errors).buildDepError "language-ats"))
          (hsPkgs."shake-ext" or ((hsPkgs.pkgs-errors).buildDepError "shake-ext"))
          (hsPkgs."hs2ats" or ((hsPkgs.pkgs-errors).buildDepError "hs2ats"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."dependency" or ((hsPkgs.pkgs-errors).buildDepError "dependency"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }