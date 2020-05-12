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
      identifier = { name = "IfElse"; version = "0.85"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.R. Heard";
      author = "J.R. Heard and Wren Thornton";
      homepage = "";
      url = "";
      synopsis = "Anaphoric and miscellaneous useful control-flow";
      description = "Anaphoric and miscellaneous useful control-flow";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }