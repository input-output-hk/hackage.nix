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
      specVersion = "1.8";
      identifier = { name = "competition"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jon@joneisen.me";
      author = "Jon Eisen";
      homepage = "github.com/yanatan16/haskell-competition";
      url = "";
      synopsis = "Helpers and runners for code competitions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }