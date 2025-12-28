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
      specVersion = "3.0";
      identifier = { name = "gloss-relative"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hpacheco@di.uminho.pt";
      author = "Hugo Pacheco";
      homepage = "";
      url = "";
      synopsis = "Painless relative-sized pictures in Gloss.";
      description = "A new Frame data type for Gloss that simplifies drawing vector graphics with relative sizes and flexible layouts -- no more hardcoding distances. Bonus: graphics automatically resize when the screen changes, and native mouse hover events over defined screen regions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."gloss-rendering" or (errorHandler.buildDepError "gloss-rendering"))
        ];
        buildable = true;
      };
      exes = {
        "gloss-relative-checkers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss-relative" or (errorHandler.buildDepError "gloss-relative"))
          ];
          buildable = true;
        };
        "gloss-relative-button" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss-relative" or (errorHandler.buildDepError "gloss-relative"))
          ];
          buildable = true;
        };
        "gloss-relative-drag" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss-relative" or (errorHandler.buildDepError "gloss-relative"))
          ];
          buildable = true;
        };
      };
    };
  }