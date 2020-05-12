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
      identifier = { name = "threads-supervisor"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Alfredo Di Napoli";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Simple, IO-based library for Erlang-style thread supervision";
      description = "Simple, IO-based library for Erlang-style thread supervision";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "threads-supervisor-tests" = {
          depends = [
            (hsPkgs."threads-supervisor" or (errorHandler.buildDepError "threads-supervisor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }