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
      identifier = { name = "lambdaBase"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "raphaelsimeon@gmail.com";
      author = "Raphaël Mongeau";
      homepage = "";
      url = "";
      synopsis = "";
      description = "LambdaBase is a lambda based language hosting an other language (defined by the person using it).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }