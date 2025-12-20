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
      identifier = { name = "changeset-containers"; version = "0.1.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Stateful monad transformer based on monoidal actions";
      description = "A general state monad transformer with separate types for the state and the possible changes.\nIt can be defined for any monoid action.\nThe monoid represents \"changes\", \"updates\", \"edits\" or \"diffs\" on the state.\nThis package exposes typical changes for @containers@ such as maps, sequences, and sets.\nTo change individual elements of a container, have a look at the indexed changes in [@changeset-lens@](hackage.haskell.org/package/changeset-lens).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
        ];
        buildable = true;
      };
      tests = {
        "changeset-containers-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
            (hsPkgs."changeset-containers" or (errorHandler.buildDepError "changeset-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }