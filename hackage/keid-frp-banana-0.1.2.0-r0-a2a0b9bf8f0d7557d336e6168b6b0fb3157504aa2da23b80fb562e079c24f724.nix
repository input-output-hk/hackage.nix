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
      identifier = { name = "keid-frp-banana"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 IC Rainbow";
      maintainer = "keid@aenor.ru";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "Reactive Banana integration for Keid engine.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
          (hsPkgs."geomancy-layout" or (errorHandler.buildDepError "geomancy-layout"))
          (hsPkgs."keid-core" or (errorHandler.buildDepError "keid-core"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          ];
        buildable = true;
        };
      };
    }