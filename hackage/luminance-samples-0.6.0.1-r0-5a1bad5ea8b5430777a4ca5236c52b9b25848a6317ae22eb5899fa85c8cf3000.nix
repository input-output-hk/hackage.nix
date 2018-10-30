{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "luminance-samples";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/luminance-samples";
      url = "";
      synopsis = "Luminance samples";
      description = "Luminance samples used as tutorial help";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HelloWorld" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
        "HelloWorldUniform" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
        "DepthTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
        "Blending" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
        "Texture" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.JuicyPixels)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
        "Blit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
        "UBO" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.linear)
            (hsPkgs.luminance)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }