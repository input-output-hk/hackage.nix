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
      identifier = { name = "hsbc"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "grogers385@gmail.com";
      author = "George Rogers";
      homepage = "";
      url = "";
      synopsis = "Command Line Calculator";
      description = "Command Line Calculator";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsbc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }