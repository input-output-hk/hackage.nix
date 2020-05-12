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
      identifier = { name = "thread-supervisor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018-2020 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/thread-supervisor#readme";
      url = "";
      synopsis = "A simplified implementation of Erlang/OTP like supervisor over thread";
      description = "Please see the README on Github at <https://github.com/nshimaza/thread-supervisor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "thread-supervisor-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."thread-supervisor" or (errorHandler.buildDepError "thread-supervisor"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }