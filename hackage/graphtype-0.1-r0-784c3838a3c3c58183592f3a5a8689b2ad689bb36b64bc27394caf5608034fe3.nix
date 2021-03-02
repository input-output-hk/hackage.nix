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
      specVersion = "1.0";
      identifier = { name = "graphtype"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmity Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov";
      homepage = "";
      url = "";
      synopsis = "A simple tool to illustrate dependencies between Haskell types";
      description = "This tools produces diagrams of Haskell type interdependencies in the given source.\nActual drawing is done by graphviz tools (dot).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "graphtype" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }