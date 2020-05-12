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
      identifier = { name = "elm-repl"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2013 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "https://github.com/evancz/elm-repl#elm-repl";
      url = "";
      synopsis = "a REPL for Elm";
      description = "A read-eval-print-loop (REPL) for evaluating Elm expressions,\ndefinitions, ADTs, and module imports. This tool is meant to\nhelp you play with small expressions and interact with\nfunctions deep inside of larger projects.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "elm-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Elm" or (errorHandler.buildDepError "Elm"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }