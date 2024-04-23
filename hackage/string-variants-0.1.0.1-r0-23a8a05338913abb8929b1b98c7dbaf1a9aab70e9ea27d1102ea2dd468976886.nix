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
      identifier = { name = "string-variants"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jade Lovelace <jadel@mercury.com>";
      author = "";
      homepage = "https://github.com/MercuryTechnologies/string-variants#readme";
      url = "";
      synopsis = "Constrained text newtypes";
      description = "See README at <https://github.com/MercuryTechnologies/string-variants#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."refinery" or (errorHandler.buildDepError "refinery"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }