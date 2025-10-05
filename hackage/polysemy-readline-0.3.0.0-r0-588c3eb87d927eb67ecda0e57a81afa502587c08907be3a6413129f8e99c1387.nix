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
      specVersion = "3.0";
      identifier = { name = "polysemy-readline"; version = "0.3.0.0"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2021 Devin Lehmacher";
      maintainer = "Devin Lehmacher";
      author = "Devin Lehmacher";
      homepage = "https://github.com/lehmacdj/polysemy-readline#readme";
      url = "";
      synopsis = "Readline effect for polysemy.";
      description = "This library provides a Readline effect for polysemy with a primary\ninterpreter based on haskeline. Please see the README on GitHub at\n<https://github.com/lehmacdj/polysemy-readline#readme> for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
        ];
        buildable = true;
      };
      exes = {
        "echo-repl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-readline" or (errorHandler.buildDepError "polysemy-readline"))
          ];
          buildable = true;
        };
      };
      tests = {
        "polysemy-readline-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-readline" or (errorHandler.buildDepError "polysemy-readline"))
          ];
          buildable = true;
        };
      };
    };
  }