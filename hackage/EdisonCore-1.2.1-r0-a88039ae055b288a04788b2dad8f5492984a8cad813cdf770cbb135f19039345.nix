{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "EdisonCore"; version = "1.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Chris Okasaki";
      homepage = "";
      url = "";
      synopsis = "A library of efficient, purely-functional data structures (Core Implementations)";
      description = "This package provides the core Edison data structure implementations,\nincluding multiple sequence, set, bag, and finite map concrete\nimplementations with various performance characteristics. The\nimplementations in this package have no dependencies other than\nthose commonly bundled with Haskell compilers.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."EdisonAPI" or (errorHandler.buildDepError "EdisonAPI"))
          ];
        buildable = true;
        };
      };
    }