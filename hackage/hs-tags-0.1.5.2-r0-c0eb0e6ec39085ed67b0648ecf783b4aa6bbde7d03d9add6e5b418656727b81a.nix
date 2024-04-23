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
      identifier = { name = "hs-tags"; version = "0.1.5.2"; };
      license = "MIT";
      copyright = "(c) 2005-2021 The Agda Team.";
      maintainer = "Andreas Abel <andreas.abel@gu.se>";
      author = "Ulf Norell, Nils Anders Danielsson, Andrés Sicard-Ramírez, Andreas Abel, Francesco Mazzoli, Paolo G. Giarrusso";
      homepage = "";
      url = "";
      synopsis = "Create tag files (ctags and etags) for Haskell code.";
      description = "\nExecutable to generate a tags (ctags) or TAGS (etags) file\nfor a bunch of Haskell files, using GHC as parser.\nThese tag files are used by editors (e.g. TAGS by Emacs) to\nimplement jump-to-definition (e.g. M-. in Emacs).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs-tags" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ];
          buildable = true;
        };
      };
    };
  }