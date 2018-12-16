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
        name = "JuicyPixels-stbir";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Jorge L Rodriguez, Michael Tolly";
      maintainer = "miketolly@gmail.com";
      author = "Jorge L Rodriguez, Michael Tolly";
      homepage = "https://github.com/mtolly/JuicyPixels-stbir";
      url = "";
      synopsis = "Scale JuicyPixels images with stb_image_resize";
      description = "Use the <https://github.com/nothings/stb stb> image resize C library\nto scale JuicyPixels images at high quality with a variety of options.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.data-default-class)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }