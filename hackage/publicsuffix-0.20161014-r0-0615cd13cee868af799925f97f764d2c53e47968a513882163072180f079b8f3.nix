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
      identifier = { name = "publicsuffix"; version = "0.20161014"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "https://github.com/wereHamster/publicsuffix-haskell/";
      url = "";
      synopsis = "The publicsuffix list exposed as proper Haskell types";
      description = "This package contains a parsed representation of the publicsuffix list,\nand functions which you can use to query it.\n\nThe package version follows the template @\\<api version\\>.\\<date\\>@ where\n@date@ is when the publicsuffix list was last updated from upstream, in the\nformat @YYYYMMDD@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."publicsuffix" or (errorHandler.buildDepError "publicsuffix"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."publicsuffix" or (errorHandler.buildDepError "publicsuffix"))
          ];
          buildable = true;
        };
      };
    };
  }