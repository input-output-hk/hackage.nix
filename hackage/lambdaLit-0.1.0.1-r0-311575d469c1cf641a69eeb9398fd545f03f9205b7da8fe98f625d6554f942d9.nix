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
      identifier = { name = "lambdaLit"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "raphaelsimeon@gmail.com";
      author = "Raphaël Mongeau";
      homepage = "";
      url = "";
      synopsis = "...";
      description = "An repl using the lambdaBase package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdaLit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdaBase" or (errorHandler.buildDepError "lambdaBase"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }