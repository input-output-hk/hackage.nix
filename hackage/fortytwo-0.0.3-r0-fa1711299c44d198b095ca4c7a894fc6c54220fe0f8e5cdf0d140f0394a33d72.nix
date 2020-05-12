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
      identifier = { name = "fortytwo"; version = "0.0.3"; };
      license = "MIT";
      copyright = "Gianlua Guarini";
      maintainer = "gianluca.guarini@gmail.com";
      author = "Gianluca Guarini";
      homepage = "https://github.com/gianlucaguarini/fortytwo#readme";
      url = "";
      synopsis = "Interactive terminal prompt";
      description = "List of Prompt helpers to pimp the UIs of your haskell programs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fortytwo" or (errorHandler.buildDepError "fortytwo"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."fortytwo" or (errorHandler.buildDepError "fortytwo"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."fortytwo" or (errorHandler.buildDepError "fortytwo"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }