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
      identifier = { name = "guid"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2015 brady.ouren <brady.ouren@gmail.com>";
      maintainer = "brady.ouren <brady.ouren@gmail.com>";
      author = "brady.ouren <brady.ouren@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple wrapper around uuid";
      description = "A simple wrapper around uuid";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."guid" or (errorHandler.buildDepError "guid"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }