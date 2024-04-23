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
      identifier = { name = "hxthelper"; version = "0.2.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@openfactis.org>";
      author = "David Leuschner, Stefan Wehr";
      homepage = "";
      url = "";
      synopsis = "Helper functions for HXT";
      description = "Helper functions for HXT including pure parsing and serialization\nfunctions, easier pickling of sum-types, ensuring all XML content\nis parsed during unpickling.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
        ];
        buildable = true;
      };
    };
  }