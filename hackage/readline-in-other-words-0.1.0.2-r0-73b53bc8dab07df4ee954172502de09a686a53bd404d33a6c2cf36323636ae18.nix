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
      identifier = { name = "readline-in-other-words"; version = "0.1.0.2"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2021 Devin Lehmacher";
      maintainer = "Devin Lehmacher";
      author = "Devin Lehmacher";
      homepage = "https://github.com/lehmacdj/readline-in-other-words#readme";
      url = "";
      synopsis = "Readline effect for in-other-words.";
      description = "This library provides effects for in-other-words offering the functionality of\nhaskeline. Please see the README on GitHub at\n<https://github.com/lehmacdj/readline-in-other-words#readme> for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."in-other-words" or (errorHandler.buildDepError "in-other-words"))
          (hsPkgs."in-other-words-plugin" or (errorHandler.buildDepError "in-other-words-plugin"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "echo-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."in-other-words" or (errorHandler.buildDepError "in-other-words"))
            (hsPkgs."in-other-words-plugin" or (errorHandler.buildDepError "in-other-words-plugin"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."readline-in-other-words" or (errorHandler.buildDepError "readline-in-other-words"))
            ];
          buildable = true;
          };
        };
      };
    }