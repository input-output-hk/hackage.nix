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
      identifier = { name = "cabal-bounds"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
      description = "A command line program for managing the bounds/versions of the dependencies in a cabal file.\n\n'cabal-bounds' is able to do these things with the bounds of the dependencies in the cabal file:\n\n* drop them\n\n* update them by the library versions of the current cabal build\n\n* update them by the library versions of a haskell platform release\n\n* update them by the library versions specified by a file\n\n* dump the libraries/dependencies and their lower bound versions from the cabal file(s) into a file\n\nFor further details please consult the <https://github.com/dan-t/cabal-bounds README>.\n\n/Installation/\n\nYou have to ensure, that the 'Cabal' library of 'cabal-bounds' matches the one used by the 'cabal' binary:\n\n> $ cabal --version\n> cabal-install version 1.18.0.2\n> using version 1.18.1 of the Cabal library\n\n> $ cabal install --constraint=\"Cabal == 1.18.1\" cabal-bounds\n\nIf you update the 'cabal' binary and the used 'Cabal' library changes, then you have to rebuild 'cabal-bounds'.\n\n/Issues/\n\nPerhaps the currently most annoying thing is, that you have to live with the reformating of your\n'cabal' file done by the pretty printer of the 'Cabal' library.\n\nTo reformat your 'cabal' file without changing any bounds you can call 'cabal-bounds' with the name of\na section that isn't present in the 'cabal' file:\n\n> $ cabal-bounds drop --executable=blub";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."cabal-lenses" or (errorHandler.buildDepError "cabal-lenses"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "cabal-bounds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-bounds" or (errorHandler.buildDepError "cabal-bounds"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cabal-bounds-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."cabal-bounds" or (errorHandler.buildDepError "cabal-bounds"))
            ];
          buildable = true;
          };
        };
      };
    }