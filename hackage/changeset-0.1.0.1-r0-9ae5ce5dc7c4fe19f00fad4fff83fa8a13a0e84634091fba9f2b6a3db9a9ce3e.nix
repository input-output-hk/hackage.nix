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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "changeset"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Stateful monad transformer based on monoidal actions";
      description = "A general state monad transformer with separate types for the state and the possible changes.\nIt can be defined for any monoid action.\nThe monoid represents \"changes\", \"updates\", \"edits\" or \"diffs\" on the state.\nThe @changeset@ ecosystem has support for standard @containers@ and optics from @lens@\nby providing the packages @changeset-containers@ and @changeset-lens@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ] ++ [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ];
        buildable = true;
      };
      tests = {
        "changeset-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "changeset-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          ];
          buildable = true;
        };
      };
    };
  }