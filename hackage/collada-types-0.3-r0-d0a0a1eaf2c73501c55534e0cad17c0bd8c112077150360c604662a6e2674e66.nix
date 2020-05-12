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
      identifier = { name = "collada-types"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Data exchange between graphic applications";
      description = "Collada is the standard graphics format for data exchange between 3d tools. As well as the file format also its representation as an algebraic data type could be used to make libraries more composable. Please propose changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."enumerable" or (errorHandler.buildDepError "enumerable"))
          (hsPkgs."tuple-gen" or (errorHandler.buildDepError "tuple-gen"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          ];
        buildable = true;
        };
      };
    }