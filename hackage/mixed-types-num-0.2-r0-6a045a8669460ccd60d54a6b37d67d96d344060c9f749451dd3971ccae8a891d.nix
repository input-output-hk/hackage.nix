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
      specVersion = "1.9.2";
      identifier = { name = "mixed-types-num"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/mixed-types-num";
      url = "";
      synopsis = "Alternative Prelude with numeric and logic expressions typed bottom-up";
      description = "This package provides a version of Prelude where\nunary and binary operations such as @not@, @+@, @==@\nhave their result type derived from the parameter type(s).\n\nSee module \"MixedTypesNumPrelude\" for further documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }