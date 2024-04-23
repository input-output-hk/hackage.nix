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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."th-printf" or (errorHandler.buildDepError "th-printf"))
        ];
        buildable = true;
      };
    };
  }