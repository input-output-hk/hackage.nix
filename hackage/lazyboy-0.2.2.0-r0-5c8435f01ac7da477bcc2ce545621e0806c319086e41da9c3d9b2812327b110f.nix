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
      identifier = { name = "lazyboy"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rose";
      maintainer = "rose@lain.org.uk";
      author = "Rose";
      homepage = "https://github.com/ix/lazyboy#readme";
      url = "";
      synopsis = "An EDSL for programming the Game Boy.";
      description = "An EDSL for programming the Nintendo Game Boy. <https://github.com/ix/lazyboy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."microstache" or (errorHandler.buildDepError "microstache"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "lazyboy-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lazyboy" or (errorHandler.buildDepError "lazyboy"))
            (hsPkgs."microstache" or (errorHandler.buildDepError "microstache"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }