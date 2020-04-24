{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "google-mail-filters"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "google-mail-filters@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/google-mail-filters";
      url = "";
      synopsis = "Write GMail filters and output to importable XML";
      description = "Organise your Google Mail filters as a Haskell EDSL, and produce XML\noutput that can be imported from the GMail web interface.\n\nSee <https://github.com/liyang/google-mail-filters/blob/master/example.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."google-search" or ((hsPkgs.pkgs-errors).buildDepError "google-search"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."google-mail-filters" or ((hsPkgs.pkgs-errors).buildDepError "google-mail-filters"))
            (hsPkgs."google-search" or ((hsPkgs.pkgs-errors).buildDepError "google-search"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }