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
      identifier = { name = "keid-geometry"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2023 IC Rainbow";
      maintainer = "keid@aenor.ru";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "Geometry primitives for Keid engine.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
          (hsPkgs."keid-core" or (errorHandler.buildDepError "keid-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          ];
        buildable = true;
        };
      };
    }