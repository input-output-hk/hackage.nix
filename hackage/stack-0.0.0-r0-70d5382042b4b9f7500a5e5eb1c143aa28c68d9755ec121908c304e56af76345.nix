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
      identifier = { name = "stack"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "";
      url = "";
      synopsis = "The Haskell Tool Stack";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stack" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }