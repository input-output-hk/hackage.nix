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
    flags = { test_delay_upper_bound = false; test_threaded = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stopwatch"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/stopwatch";
      url = "";
      synopsis = "A simple stopwatch utility";
      description = "A simple stopwatch utility";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stopwatch" or (errorHandler.buildDepError "stopwatch"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            ];
          buildable = true;
          };
        };
      };
    }