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
      identifier = { name = "geomancy-layout"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 IC Rainbow";
      maintainer = "aenor.realm@gmail.com";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "Geometry and matrix manipulation";
      description = "Layout primitives and algorithms for geomancy data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."geomancy" or (errorHandler.buildDepError "geomancy"))
          (hsPkgs."gl-block" or (errorHandler.buildDepError "gl-block"))
        ];
        buildable = true;
      };
    };
  }