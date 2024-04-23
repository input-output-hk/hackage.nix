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
      specVersion = "1.6";
      identifier = { name = "graphtype"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009,2010 Dmitry Astapov";
      maintainer = "Max Desyatov <explicitcall at gmail.com>";
      author = "Dmitry Astapov";
      homepage = "http://github.com/explicitcall/graphtype";
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
            (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
          ];
          buildable = true;
        };
      };
    };
  }