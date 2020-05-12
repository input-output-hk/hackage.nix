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
      identifier = { name = "verify"; version = "0.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "Author name here";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A new Haskeleton package.";
      description = "verify is a new Haskeleton package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."jwt" or (errorHandler.buildDepError "jwt"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text-conversions" or (errorHandler.buildDepError "text-conversions"))
          ];
        buildable = true;
        };
      exes = {
        "verify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."verify" or (errorHandler.buildDepError "verify"))
            ];
          buildable = true;
          };
        };
      tests = {
        "verify-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jwt" or (errorHandler.buildDepError "jwt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-conversions" or (errorHandler.buildDepError "text-conversions"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."verify" or (errorHandler.buildDepError "verify"))
            ];
          buildable = true;
          };
        };
      };
    }