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
      identifier = { name = "vintage-basic"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lyle@vintage-basic.net";
      author = "Lyle Kopnicky";
      homepage = "http://www.vintage-basic.net";
      url = "";
      synopsis = "Interpreter for microcomputer-era BASIC";
      description = "An interpreter for what is essentially Microsoft BASIC v2,\nwhat you might find on a computer in the late 70s or early\n80s, such as the Commodore 64.\n\nRather than making use of traditional stack-based primitives,\nthe implementation uses monad transformers, including one\nwith resumable exceptions that can caught by a program's\ncontinuation rather than its context.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vintbas" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-vintbas" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }