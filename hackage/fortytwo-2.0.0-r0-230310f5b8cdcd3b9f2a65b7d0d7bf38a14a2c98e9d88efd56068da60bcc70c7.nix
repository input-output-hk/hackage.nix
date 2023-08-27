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
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fortytwo"; version = "2.0.0"; };
      license = "MIT";
      copyright = "Gianluca Guarini";
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
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fortytwo" or (errorHandler.buildDepError "fortytwo"))
            ];
          buildable = if flags.demos then true else false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."fortytwo" or (errorHandler.buildDepError "fortytwo"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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