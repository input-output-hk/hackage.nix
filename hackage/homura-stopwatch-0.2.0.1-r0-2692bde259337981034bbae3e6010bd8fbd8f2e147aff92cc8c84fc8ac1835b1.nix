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
      identifier = { name = "homura-stopwatch"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "© ncaq";
      maintainer = "ncaq@ncaq.net";
      author = "ncaq";
      homepage = "https://github.com/ncaq/homura-stopwatch#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ncaq/homura-stopwatch#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time-hourglass" or (errorHandler.buildDepError "time-hourglass"))
        ];
        buildable = true;
      };
      exes = {
        "homura-stopwatch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."homura-stopwatch" or (errorHandler.buildDepError "homura-stopwatch"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time-hourglass" or (errorHandler.buildDepError "time-hourglass"))
          ];
          buildable = true;
        };
      };
    };
  }