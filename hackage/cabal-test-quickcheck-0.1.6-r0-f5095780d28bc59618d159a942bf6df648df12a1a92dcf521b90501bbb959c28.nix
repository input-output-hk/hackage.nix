{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-test-quickcheck"; version = "0.1.6"; };
      license = "MIT";
      copyright = "(c) 2013-2015 Timothy Jones";
      maintainer = "Timothy Jones <git@zmthy.io>";
      author = "Timothy Jones";
      homepage = "https://github.com/zmthy/cabal-test-quickcheck";
      url = "";
      synopsis = "QuickCheck for Cabal";
      description = "Support for QuickCheck with the 'detailed' Cabal testing interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }