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
      identifier = { name = "statsdi"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Ilya Ostrovskiy";
      maintainer = "first-name@thenumber200-thewordproof.cc";
      author = "Ilya Ostrovskiy";
      homepage = "https://github.com/iostat/statsdi#readme";
      url = "";
      synopsis = "A lovely [Dog]StatsD implementation";
      description = "An implementation of DogStatsD for collecting and pushing metrics";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."dequeue" or (errorHandler.buildDepError "dequeue"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ether" or (errorHandler.buildDepError "ether"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-lift" or (errorHandler.buildDepError "transformers-lift"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "statsdi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."statsdi" or (errorHandler.buildDepError "statsdi"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }