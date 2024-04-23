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
      specVersion = "1.2";
      identifier = { name = "newtyper"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@techtangents.com";
      author = "Dylan Just";
      homepage = "https://github.com/techtangents/Newtyper";
      url = "";
      synopsis = "Extra functions for the Control.Newtype typeclass";
      description = "Extra functions for the Control.Newtype typeclass";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Kleislify" or (errorHandler.buildDepError "Kleislify"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
        ];
        buildable = true;
      };
    };
  }