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
      specVersion = "1.12";
      identifier = { name = "hydrogen-cli"; version = "0.14"; };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-cli/";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "h" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hydrogen-cli-args" or (errorHandler.buildDepError "hydrogen-cli-args"))
            (hsPkgs."hydrogen-data" or (errorHandler.buildDepError "hydrogen-data"))
            (hsPkgs."hydrogen-multimap" or (errorHandler.buildDepError "hydrogen-multimap"))
            (hsPkgs."hydrogen-parsing" or (errorHandler.buildDepError "hydrogen-parsing"))
            (hsPkgs."hydrogen-prelude" or (errorHandler.buildDepError "hydrogen-prelude"))
            (hsPkgs."hydrogen-syntax" or (errorHandler.buildDepError "hydrogen-syntax"))
            ];
          buildable = true;
          };
        };
      };
    }