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
      identifier = { name = "tesths"; version = "0.2.2.1"; };
      license = "LGPL-3.0-only";
      copyright = "2026 Thodoris Papakonstantinou";
      maintainer = "dev@tpapak.com";
      author = "Thodoris Papakonstantinou";
      homepage = "https://github.com/tpapak/tesths#readme";
      url = "";
      synopsis = "A lightweight testing framework for Haskell";
      description = "A minimal pure-functional test harness.  Build a list of @Test@ values\nusing 'testPassed' and 'testFailed', then report results with\n'reportTests' (pure tests) or 'reportTestsIO' (IO tests).\nExits with failure if any test fails.\nSee the README on Github at <https://github.com/tpapak/tesths#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ];
        buildable = true;
      };
    };
  }