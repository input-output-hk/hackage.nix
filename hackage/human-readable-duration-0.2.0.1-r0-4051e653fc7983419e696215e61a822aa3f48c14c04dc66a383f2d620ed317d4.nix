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
      identifier = { name = "human-readable-duration"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/human-readable-duration#readme";
      url = "";
      synopsis = "Provide duration helper";
      description = "This is a minimal Haskell library to display duration.\n\n> let duration = 2 * ms + 3 * oneSecond + 2 * minute + 33*day + 2*year\n> humanReadableDuration duration\n> -- will return: \"2 years 33 days 2 min 3s 2ms\"\n> getYears duration\n> -- will return 2\n> getDays duration\n> -- will return 763\n> getMs duration\n> -- will return 65923323002";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "human-readable-duration-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."human-readable-duration" or (errorHandler.buildDepError "human-readable-duration"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hrd-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."human-readable-duration" or (errorHandler.buildDepError "human-readable-duration"))
            ];
          buildable = true;
          };
        };
      };
    }