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
      specVersion = "2.4";
      identifier = { name = "agda2hs"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "2025 Ulf Norell, Jesper Cockx, Orestis Melkonian, Sára Juhošová, James Chapman, Lucas Escot, Henry Blanchette, Viktor Csimma, Aleksander Wolska, Paul Bittner, Andreas Källberg, Bohdan Liesnikov, Jakob Naucke, and Heinrich Apfelmus";
      maintainer = "jesper@sikanda.be";
      author = "Ulf Norell, Jesper Cockx, Orestis Melkonian, Sára Juhošová, James Chapman, Lucas Escot, Henry Blanchette, Viktor Csimma, Aleksander Wolska, Paul Bittner, Andreas Källberg, Bohdan Liesnikov, Jakob Naucke, and Heinrich Apfelmus";
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
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
    };
  }