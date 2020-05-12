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
      specVersion = "1.9.2";
      identifier = { name = "cabal-cargs"; version = "0.5"; };
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
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
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