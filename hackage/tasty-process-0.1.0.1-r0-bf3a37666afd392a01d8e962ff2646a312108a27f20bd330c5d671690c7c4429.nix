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
      specVersion = "1.12";
      identifier = { name = "tasty-process"; version = "0.1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2024 PCloud";
      maintainer = "heige.pcloud@outlook.com";
      author = "PCloud";
      homepage = "https://github.com/HEIGE-PCloud/tasty-process#readme";
      url = "";
      synopsis = "Test execution of external processes with Tasty";
      description = "Please see the README on GitHub at <https://github.com/HEIGE-PCloud/tasty-process#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
        buildable = true;
        };
      exes = {
        "test-executable-echo" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-process" or (errorHandler.buildDepError "tasty-process"))
            ];
          buildable = true;
          };
        "test-executable-exitcode" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-process" or (errorHandler.buildDepError "tasty-process"))
            ];
          buildable = true;
          };
        "test-executable-simple" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-process" or (errorHandler.buildDepError "tasty-process"))
            ];
          buildable = true;
          };
        "test-executable-sleep" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-process" or (errorHandler.buildDepError "tasty-process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tasty-process-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-process" or (errorHandler.buildDepError "tasty-process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.test-executable-echo.components.exes.test-executable-echo or (pkgs.buildPackages.test-executable-echo or (errorHandler.buildToolDepError "test-executable-echo:test-executable-echo")))
            (hsPkgs.buildPackages.test-executable-exitcode.components.exes.test-executable-exitcode or (pkgs.buildPackages.test-executable-exitcode or (errorHandler.buildToolDepError "test-executable-exitcode:test-executable-exitcode")))
            (hsPkgs.buildPackages.test-executable-simple.components.exes.test-executable-simple or (pkgs.buildPackages.test-executable-simple or (errorHandler.buildToolDepError "test-executable-simple:test-executable-simple")))
            (hsPkgs.buildPackages.test-executable-sleep.components.exes.test-executable-sleep or (pkgs.buildPackages.test-executable-sleep or (errorHandler.buildToolDepError "test-executable-sleep:test-executable-sleep")))
            ];
          buildable = true;
          };
        };
      };
    }