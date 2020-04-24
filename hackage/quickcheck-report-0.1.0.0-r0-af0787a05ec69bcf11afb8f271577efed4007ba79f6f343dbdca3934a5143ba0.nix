{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-report"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Customizable reports for quickcheck properties";
      description = "Add some flexibility to the creation of reports from sets of quickcheck properties";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."th-printf" or ((hsPkgs.pkgs-errors).buildDepError "th-printf"))
          ];
        buildable = true;
        };
      };
    }