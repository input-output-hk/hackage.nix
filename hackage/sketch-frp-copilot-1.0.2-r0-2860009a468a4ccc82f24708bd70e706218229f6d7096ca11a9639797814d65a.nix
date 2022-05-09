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
      identifier = { name = "sketch-frp-copilot"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020-2022 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "Sketch programming with Copilot";
      description = "This extends Copilot with a FRP-like interface which can be used to\nimplement simple standalone programs (sketches) for embedded boards.\n\nIt is used by arduino-copilot and zephyr-copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language\n(DSL) in Haskell that compiles into embedded C. Copilot contains an\ninterpreter, multiple back-end compilers, and other verification tools.\n<https://copilot-language.github.io/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."copilot" or (errorHandler.buildDepError "copilot"))
          (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
          (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }