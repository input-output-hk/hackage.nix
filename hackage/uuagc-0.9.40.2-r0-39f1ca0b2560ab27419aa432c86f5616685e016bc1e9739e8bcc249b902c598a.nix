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
      identifier = { name = "uuagc"; version = "0.9.40.2"; };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Attribute Grammar System of Universiteit Utrecht";
      description = "Generates Haskell files from an attribute grammar specification";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."uuagc-bootstrap" or (errorHandler.buildDepError "uuagc-bootstrap"))
          (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "uuagc" = {
          depends = [
            (hsPkgs."uuagc-bootstrap" or (errorHandler.buildDepError "uuagc-bootstrap"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }