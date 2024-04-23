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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ktx"; version = "0.2"; };
      license = "MIT";
      copyright = "2015 David McFarland";
      maintainer = "David McFarland <corngood@gmail.com>";
      author = "David McFarland <corngood@gmail.com>";
      homepage = "https://github.com/corngood/ktx";
      url = "";
      synopsis = "A binding for libktx from Khronos";
      description = "Allows ktx format textures to be loaded into an OpenGL context.\nlibktx is included as a submodule and compiled with 'c-sources'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        pkgconfig = [
          (pkgconfPkgs."glew" or (errorHandler.pkgConfDepError "glew"))
          (pkgconfPkgs."egl" or (errorHandler.pkgConfDepError "egl"))
        ];
        buildable = true;
      };
    };
  }