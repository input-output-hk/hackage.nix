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
      identifier = { name = "records-edsl-core"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Mike Ledger <mike@quasimal.com>";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "Write less record boilerplate: core package";
      description = "See https://hackage.haskell.org/packages/records-edsl";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
        ];
        buildable = true;
      };
    };
  }