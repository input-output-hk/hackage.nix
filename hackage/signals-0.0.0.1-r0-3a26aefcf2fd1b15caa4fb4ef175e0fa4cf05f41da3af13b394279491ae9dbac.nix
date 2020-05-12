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
      identifier = { name = "signals"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson";
      homepage = "https://github.com/markus-git/signals";
      url = "";
      synopsis = "Stream Processing for Embedded Domain Specific Languages";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exception-mtl" or (errorHandler.buildDepError "exception-mtl"))
          ];
        buildable = true;
        };
      };
    }