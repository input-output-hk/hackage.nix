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
      identifier = { name = "jack-bindings"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "p.balzarek@googlemail.com";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "Bindings to the JACK Audio Connection Kit";
      description = "Low level bindings to the JACK Audio Connection Kit ( <http://jackaudio.org/> )\n\nThis package provides bindings to the functionality providet in the jack.h include file\nand should be sufficient to write a fully functional client\n\nFor now, please refer to the Jack documentation for a complete description of the api.\n\n<http://jackaudio.org/files/docs/html/jack_8h.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        pkgconfig = [
          (pkgconfPkgs."jack" or (errorHandler.pkgConfDepError "jack"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }