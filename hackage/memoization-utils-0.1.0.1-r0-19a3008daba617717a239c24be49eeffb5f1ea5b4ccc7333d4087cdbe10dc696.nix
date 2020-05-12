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
      identifier = { name = "memoization-utils"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "http://github.com/yamadapc/haskell-memoization-utils";
      url = "";
      synopsis = "Utilities for memoizing functions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lrucache" or (errorHandler.buildDepError "lrucache"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."memoization-utils" or (errorHandler.buildDepError "memoization-utils"))
            ];
          buildable = true;
          };
        };
      };
    }