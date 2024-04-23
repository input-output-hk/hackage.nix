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
      specVersion = "2.2";
      identifier = { name = "agda2hs"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Ulf Norell, Jesper Cockx, Orestis Melkonian, Sára Juhošová, James Chapman, Lucas Escot, Henry Blanchette";
      maintainer = "jesper@sikanda.be";
      author = "Ulf Norell, Jesper Cockx, Orestis Melkonian, Sára Juhošová, James Chapman, Lucas Escot, Henry Blanchette";
      homepage = "";
      url = "";
      synopsis = "Compiling Agda code to readable Haskell.";
      description = "Produces verified and readable Haskell code by extracting it from a\n(lightly annotated) Agda program.\nThe tool is implemented as an Agda backend, which means that `agda2hs` is a\nfully functional Agda compiler.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "agda2hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }