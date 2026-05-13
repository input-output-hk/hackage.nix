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
      specVersion = "3.0";
      identifier = { name = "changeset-fused-effects"; version = "0.2.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Stateful monad transformer based on monoidal actions";
      description = "A general state monad transformer with separate types for the state and the possible changes.\nIt can be defined for any monoid action.\nThe monoid represents \"changes\", \"updates\", \"edits\" or \"diffs\" on the state.\nThis package exposes the corresponding effect signature for usage in @fused-effects@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
        ];
        buildable = true;
      };
      tests = {
        "changeset-fused-effects-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."changeset" or (errorHandler.buildDepError "changeset"))
            (hsPkgs."changeset-fused-effects" or (errorHandler.buildDepError "changeset-fused-effects"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }