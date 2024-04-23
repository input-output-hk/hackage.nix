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
      identifier = { name = "hpage"; version = "0.12.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://haskell.hpage.com";
      url = "http://code.haskell.org/hpage";
      synopsis = "A scrapbook for Haskell developers";
      description = "λPage is targeted at those haskell developers which also like to work with dynamic GUIs and wish to have something like Smalltalk's Workspace or jPage for Java. Using λPage developers can write haskell expressions, evaluate and test them, load, unload and (of course) reload modules and then, re-evaluate the same expressions. Developed over wxWidgets, λPage is multi-platform by nature and works in every scenario where ghc and wxWidgets work.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hpage" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
            (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hint-server" or (errorHandler.buildDepError "hint-server"))
            (hsPkgs."hint-server" or (errorHandler.buildDepError "hint-server"))
            (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
            (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
          ];
          buildable = true;
        };
      };
    };
  }