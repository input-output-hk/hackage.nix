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
      identifier = { name = "JuicyPixels-stbir"; version = "0.1.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }