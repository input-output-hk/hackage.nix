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
      specVersion = "1.8";
      identifier = { name = "digestive-functors-aeson"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2012 Oliver Charles";
      maintainer = "Oliver Charles <ollie@ocharles.org.uk>";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/digestive-functors-aeson";
      url = "";
      synopsis = "Run digestive-functors forms against JSON";
      description = "This package allows you to run a form created by digestive functors against a\nJSON document that has been parsed by Aeson.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-lens" or (errorHandler.buildDepError "aeson-lens"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }