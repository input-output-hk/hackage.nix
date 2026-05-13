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
        name = "records-edsl-deriving-openapi3";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Mike Ledger <mike@quasimal.com>";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "ToSchema deriving for records-edsl";
      description = "See https://hackage.haskell.org/packages/records-edsl";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."records-edsl-core" or (errorHandler.buildDepError "records-edsl-core"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }