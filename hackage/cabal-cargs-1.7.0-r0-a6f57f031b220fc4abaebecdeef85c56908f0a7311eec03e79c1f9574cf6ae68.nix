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
      identifier = { name = "cabal-cargs"; version = "1.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for extracting compiler arguments from a cabal file.";
      description = "For further details please consult the <https://github.com/dan-t/cabal-cargs README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."cabal-lenses" or (errorHandler.buildDepError "cabal-lenses"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "cabal-cargs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-cargs" or (errorHandler.buildDepError "cabal-cargs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cabal-cargs" or (errorHandler.buildDepError "cabal-cargs"))
          ];
          buildable = true;
        };
      };
    };
  }