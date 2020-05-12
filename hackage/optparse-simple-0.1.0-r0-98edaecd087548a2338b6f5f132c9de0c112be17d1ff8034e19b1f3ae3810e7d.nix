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
      identifier = { name = "optparse-simple"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 FP Complete";
      maintainer = "chrisdone@fpcomplete.com";
      author = "FP Complete";
      homepage = "https://github.com/fpco/optparse-simple#readme";
      url = "";
      synopsis = "Simple interface to optparse-applicative";
      description = "Please see the README at <https://www.stackage.org/package/optparse-simple>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            ];
          buildable = true;
          };
        };
      };
    }