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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "string-conv"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, 2012-2015";
      maintainer = "ozgun.ataman@soostone.com";
      author = "Ozgun Ataman";
      homepage = "https://github.com/Soostone/string-conv";
      url = "";
      synopsis = "Standardized conversion between string types";
      description = "Avoids the need to remember many different functions for converting string types. Just use one universal function toS for all monomorphic string conversions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }