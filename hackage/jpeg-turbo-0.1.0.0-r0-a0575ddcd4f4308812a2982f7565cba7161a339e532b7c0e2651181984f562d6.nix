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
    flags = { pkgconfig = false; static = false; static-gcc = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "jpeg-turbo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 IC Rainbow";
      maintainer = "aenor.realm@gmail.com";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to libjpeg-turbo";
      description = "Faster and more capable codec for JPEG images using libjpeg-turbo.\n\nSet one of the flags according to your build environment.\n\n<https://libjpeg-turbo.org/Documentation>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = pkgs.lib.optional (flags.static) (pkgs."turbojpeg" or (errorHandler.sysDepError "turbojpeg"));
        pkgconfig = pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs."libturbojpeg" or (errorHandler.pkgConfDepError "libturbojpeg"));
        buildable = true;
      };
      tests = {
        "jpeg-turbo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."jpeg-turbo" or (errorHandler.buildDepError "jpeg-turbo"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }