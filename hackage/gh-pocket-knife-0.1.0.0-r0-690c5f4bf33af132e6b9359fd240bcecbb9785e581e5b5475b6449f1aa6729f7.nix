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
      identifier = { name = "gh-pocket-knife"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Pat Brisbin <pbrisbin@gmail.com>";
      maintainer = "pbrisbin@gmail.com";
      author = "Pat Brisbin";
      homepage = "https://github.com/pbrisbin/gh-pocket-knife#readme";
      url = "";
      synopsis = "Script helpers for interacting with GitHub";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "gh-pocket-knife" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gh-pocket-knife" or (errorHandler.buildDepError "gh-pocket-knife"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gh-pocket-knife-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gh-pocket-knife" or (errorHandler.buildDepError "gh-pocket-knife"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }