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
      specVersion = "1.18";
      identifier = { name = "microformats2-types"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2014 Val Packett <val@packett.cool>";
      maintainer = "val@packett.cool";
      author = "Val Packett";
      homepage = "";
      url = "";
      synopsis = "Microformats 2 types for Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
        ];
        buildable = true;
      };
    };
  }