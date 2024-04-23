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
      identifier = { name = "zephyr-copilot"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020-2022 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "Embedded programming in haskell using the Copilot stream DSL and Zephyr";
      description = "zephyr-copilot contains allows using Haskell to program many boards\nsupported by the Zephyr project.\n\nzephyr-copilot uses the Copilot stream DSL (domain-specific language)\nand Functional Reactive Programming (FRP) to generate a program which\ncan be compiled in Zephyr and flashed to the board.\n\nAll the messy details are abstracted away, letting you focus on the\ndesired behavior of the board.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language\n(DSL) in Haskell that compiles into embedded C. Copilot contains an\ninterpreter, multiple back-end compilers, and other verification tools.\n<https://copilot-language.github.io/>\n\nZephyr is a real time embedded operating system (RTOS) supporting\nhundreds of boards. <https://zephyrproject.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sketch-frp-copilot" or (errorHandler.buildDepError "sketch-frp-copilot"))
          (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
          (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
          (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zephyr-copilot" or (errorHandler.buildDepError "zephyr-copilot"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }