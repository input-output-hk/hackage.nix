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
      specVersion = "0";
      identifier = { name = "HAppS-Data"; version = "0.9.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2007 HAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "HAppS data manipulation libraries";
      description = "This package provides libraries for:\n\n* Deriving instances for your datatypes.\n\n* Producing default values of Haskell datatypes.\n\n* Normalizing values of Haskell datatypes.\n\n* Marshalling Haskell values to and from XML.\n\n* Marshalling Haskell values to and from HTML forms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."HAppS-Util" or (errorHandler.buildDepError "HAppS-Util"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }