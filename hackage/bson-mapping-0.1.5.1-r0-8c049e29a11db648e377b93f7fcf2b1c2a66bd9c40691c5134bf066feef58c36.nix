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
      identifier = { name = "bson-mapping"; version = "0.1.5.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Francesco Mazzoli <f@mazzo.li>";
      author = "Francesco Mazzoli <f@mazzo.li>";
      homepage = "";
      url = "";
      synopsis = "Mapping between BSON and algebraic data types.";
      description = "This module defines a Bson class to convert data types to Bson and to convert Bson documents back to datatypes, along with template haskell functions to easily derive the instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }