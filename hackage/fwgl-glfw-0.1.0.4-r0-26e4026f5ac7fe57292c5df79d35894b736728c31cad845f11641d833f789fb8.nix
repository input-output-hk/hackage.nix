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
      specVersion = "1.10";
      identifier = { name = "fwgl-glfw"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/FWGL";
      url = "";
      synopsis = "FWGL GLFW backend";
      description = "FWGL GLFW backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fwgl" or (errorHandler.buildDepError "fwgl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          ];
        buildable = true;
        };
      };
    }