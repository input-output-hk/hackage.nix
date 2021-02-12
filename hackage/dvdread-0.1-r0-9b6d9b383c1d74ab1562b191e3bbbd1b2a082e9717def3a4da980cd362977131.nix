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
      specVersion = "1.8";
      identifier = { name = "dvdread"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "A monadic interface to libdvdread";
      description = "This module represents the functions of libdvdread as actions wrapped in the DVDRead monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        pkgconfig = [
          (pkgconfPkgs."dvdread" or (errorHandler.pkgConfDepError "dvdread"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }