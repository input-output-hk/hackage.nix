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
      identifier = { name = "composite-ekg"; version = "0.6.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "EKG Metrics for Vinyl/Frames records";
      description = "Integration between EKG and Vinyl/Frames records allowing records holding registered metrics to be easily constructed from a type declaration.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }