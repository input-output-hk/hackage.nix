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
      identifier = { name = "secdh"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pgavin@gmail.com";
      author = "Peter Gavin";
      homepage = "http://abt12monk.org/git/secdh.git";
      url = "";
      synopsis = "SECDH Machine Simulator";
      description = "SECDH stands for \"Stack-Environment-Code-Dump-Heap\", and is an\nabstract machine based on Landin's classic SECD machine for evaluation\nof lambda-calculus expressions. This machine adds a heap of suspension\ncells to the structure managed by the machine, allowing fully-lazy\nevaluation, similar to Haskell. The machine operates directly on the\nsyntax tree, as Landin's machine does. The entire implementation,\nincluding parser, evaluator, and garbage collector, occupies just over\n1100 lines of code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "secdh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."secdh" or (errorHandler.buildDepError "secdh"))
          ];
          buildable = true;
        };
      };
    };
  }