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
      specVersion = "2.2";
      identifier = { name = "moffy"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/moffy#readme";
      url = "";
      synopsis = "Monadic Functional Reactive Programming";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/moffy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extra-data-yj" or (errorHandler.buildDepError "extra-data-yj"))
          (hsPkgs."freer-par-monad" or (errorHandler.buildDepError "freer-par-monad"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."type-flip" or (errorHandler.buildDepError "type-flip"))
          (hsPkgs."type-set" or (errorHandler.buildDepError "type-set"))
          ];
        buildable = true;
        };
      tests = {
        "moffy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra-data-yj" or (errorHandler.buildDepError "extra-data-yj"))
            (hsPkgs."freer-par-monad" or (errorHandler.buildDepError "freer-par-monad"))
            (hsPkgs."moffy" or (errorHandler.buildDepError "moffy"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."type-flip" or (errorHandler.buildDepError "type-flip"))
            (hsPkgs."type-set" or (errorHandler.buildDepError "type-set"))
            ];
          buildable = true;
          };
        };
      };
    }