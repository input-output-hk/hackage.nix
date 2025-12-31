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
      specVersion = "1.10";
      identifier = { name = "EdisonCore"; version = "1.3.3.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Chris Okasaki";
      homepage = "https://github.com/robdockins/edison";
      url = "";
      synopsis = "A library of efficient, purely-functional data structures (Core Implementations)";
      description = "This package provides the core Edison data structure implementations,\nincluding multiple sequence, set, bag, and finite map concrete\nimplementations with various performance characteristics. The\nimplementations in this package have no dependencies other than those\ncommonly bundled with Haskell compilers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."EdisonAPI" or (errorHandler.buildDepError "EdisonAPI"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
    };
  }