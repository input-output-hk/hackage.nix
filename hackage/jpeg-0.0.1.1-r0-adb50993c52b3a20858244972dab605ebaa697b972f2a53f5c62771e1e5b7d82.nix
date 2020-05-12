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
      specVersion = "1.2";
      identifier = { name = "jpeg"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.D.Fokker@uu.nl";
      author = "Jeroen Fokker";
      homepage = "";
      url = "";
      synopsis = "A library for decoding JPEG files written in pure Haskell";
      description = "JPEG Decompression library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }