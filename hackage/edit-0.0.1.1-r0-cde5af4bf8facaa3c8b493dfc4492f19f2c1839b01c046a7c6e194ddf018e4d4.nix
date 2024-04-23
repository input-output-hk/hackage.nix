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
    flags = {
      arbitrary_instance = false;
      comonad_instance = false;
      tutorial = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "edit"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Varun Gandhi 2018";
      maintainer = "Varun Gandhi <theindigamer15@gmail.com>";
      author = "Varun Gandhi <theindigamer15@gmail.com>";
      homepage = "https://github.com/theindigamer/edit";
      url = "";
      synopsis = "A monad for rewriting things.";
      description = "Edit is a monad for rewriting things.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (flags.arbitrary_instance) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ pkgs.lib.optional (flags.comonad_instance) (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))) ++ pkgs.lib.optionals (flags.tutorial) [
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test-edit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."edit" or (errorHandler.buildDepError "edit"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }