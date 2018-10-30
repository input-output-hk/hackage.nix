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
      specVersion = "1.6";
      identifier = {
        name = "jack-bindings";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "not maintained";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "DEPRECATED Bindings to the JACK Audio Connection Kit";
      description = "This package has been /DEPRECATED/ and will not be maintained by the author.\n\nThis package contains known bugs:\n\n* Function pointers are not freed after use\n\nLow level bindings to the JACK Audio Connection Kit ( <http://jackaudio.org/> )\n\nThis package provides bindings to the functionality providet in the jack.h include file\nand should be sufficient to write a fully functional client\n\nFor now, please refer to the Jack documentation for a complete description of the api.\n\n<http://jackaudio.org/files/docs/html/jack_8h.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
        pkgconfig = [
          (pkgconfPkgs.jack)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }