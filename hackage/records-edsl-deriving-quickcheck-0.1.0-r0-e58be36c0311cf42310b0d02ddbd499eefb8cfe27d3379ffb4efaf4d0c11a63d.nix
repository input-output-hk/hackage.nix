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
      identifier = {
        name = "records-edsl-deriving-quickcheck";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Mike Ledger <mike@quasimal.com>";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "QuickCheck deriving for records-edsl via generic-random";
      description = "See https://hackage.haskell.org/packages/records-edsl";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."records-edsl-core" or (errorHandler.buildDepError "records-edsl-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }