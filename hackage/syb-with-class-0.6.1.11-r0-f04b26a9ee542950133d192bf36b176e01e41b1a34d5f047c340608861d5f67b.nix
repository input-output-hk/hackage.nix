{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "syb-with-class"; version = "0.6.1.11"; };
      license = "BSD-3-Clause";
      copyright = "2004 - 2008 The University of Glasgow, CWI,\nSimon Peyton Jones, Ralf Laemmel,\nUlf Norell, Sean Seefried, Simon D. Foster,\nHAppS LLC\n2009 Andrea Vezzosi";
      maintainer = "sanzhiyan@gmail.com";
      author = "Simon Peyton Jones, Ralf Laemmel";
      homepage = "";
      url = "";
      synopsis = "Scrap Your Boilerplate With Class";
      description = "Classes, and Template Haskell code to generate instances, for the\nScrap Your Boilerplate With Class system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "syb-with-class-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
            ];
          buildable = true;
          };
        };
      };
    }