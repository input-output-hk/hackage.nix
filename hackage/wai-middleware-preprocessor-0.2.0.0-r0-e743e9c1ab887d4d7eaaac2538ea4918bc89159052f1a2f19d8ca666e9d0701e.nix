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
      identifier = {
        name = "wai-middleware-preprocessor";
        version = "0.2.0.0";
        };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Remy Goldschmidt <taktoa@gmail.com>";
      author = "Remy Goldschmidt <taktoa@gmail.com>";
      homepage = "https://github.com/taktoa/wai-middleware-preprocessor";
      url = "";
      synopsis = "WAI middleware for preprocessing static files";
      description = "WAI middleware that preprocesses and caches files (e.g.: for Fay, purescript, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
          ];
        buildable = true;
        };
      tests = {
        "wai-middleware-preprocessor-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }