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
      identifier = { name = "gelatin-shaders"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@zyghost.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin-shaders#readme";
      url = "";
      synopsis = "Gelatin's OpenGL shaders.";
      description = "Gelatin's OpenGL shaders. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gelatin" or (errorHandler.buildDepError "gelatin"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }