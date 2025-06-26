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
      specVersion = "1.18";
      identifier = { name = "opengles"; version = "0.4.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "capsjac@gmail.com";
      author = "capsjac@gmail.com";
      homepage = "";
      url = "";
      synopsis = "OpenGL ES 2.0 and 3.0 with EGL 1.4";
      description = "A simplified OpenGL ES core wrapper library.\nThe mission statement of this library is three F: Fun, Fast, yet Flexible.\nPlease check out simple texture rendering example in just 100 lines.\nThis library is intended use on mobile, however,\nalso works in OpenGL 4.1/4.3+ environment on desktop.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."future-resource" or (errorHandler.buildDepError "future-resource"))
          (hsPkgs."linear-vect" or (errorHandler.buildDepError "linear-vect"))
          (hsPkgs."packer" or (errorHandler.buildDepError "packer"))
        ];
        libs = [
          (pkgs."EGL" or (errorHandler.sysDepError "EGL"))
          (pkgs."GLESv2" or (errorHandler.sysDepError "GLESv2"))
        ];
        frameworks = pkgs.lib.optionals (system.isIOS) [
          (pkgs."QuartzCore" or (errorHandler.sysDepError "QuartzCore"))
          (pkgs."OpenGLES" or (errorHandler.sysDepError "OpenGLES"))
        ];
        buildable = true;
      };
    };
  }