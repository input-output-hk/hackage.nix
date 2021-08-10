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
      identifier = { name = "chassis"; version = "0.0.6.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Polykinded Prelude Kernel.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }