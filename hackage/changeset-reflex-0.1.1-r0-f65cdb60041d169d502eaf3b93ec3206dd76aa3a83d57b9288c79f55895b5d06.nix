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
      identifier = { name = "changeset-reflex"; version = "0.1.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Stateful monad transformer based on monoidal actions";
      description = "A general state monad transformer with separate types for the state and the possible changes.\nIt can be defined for any monoid action.\nThe monoid represents \"changes\", \"updates\", \"edits\" or \"diffs\" on the state.\nThis package exposes utilities to propagate changes along @reflex@ events.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
        ];
        buildable = true;
      };
    };
  }