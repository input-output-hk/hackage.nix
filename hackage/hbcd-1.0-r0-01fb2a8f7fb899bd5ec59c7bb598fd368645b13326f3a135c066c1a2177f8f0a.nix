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
      specVersion = "1.6";
      identifier = { name = "hbcd"; version = "1.0"; };
      license = "MIT";
      copyright = "Andrew Kay, 2012";
      maintainer = "andrewjkay@gmail.com";
      author = "Andrew Kay";
      homepage = "";
      url = "";
      synopsis = "Packed binary-coded decimal (BCD) serialization";
      description = "A module containing packed binary-coded decimal (BCD) serialization\nfunctions.  Packed BCD is commonly used to encode numbers in mainframe\ndatasets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }