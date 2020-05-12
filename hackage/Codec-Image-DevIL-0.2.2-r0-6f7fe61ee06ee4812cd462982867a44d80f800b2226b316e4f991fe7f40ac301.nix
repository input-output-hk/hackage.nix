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
      specVersion = "1.6";
      identifier = { name = "Codec-Image-DevIL"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "";
      url = "";
      synopsis = "An FFI interface to the DevIL library";
      description = "Provides a very simple interface to the DevIL image library.\nProvides functions readImage and writeImage, which can read\nand write many image formats from/to an RGBA array of values\nto work with.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        libs = [
          (pkgs."IL" or (errorHandler.sysDepError "IL"))
          (pkgs."rt" or (errorHandler.sysDepError "rt"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }