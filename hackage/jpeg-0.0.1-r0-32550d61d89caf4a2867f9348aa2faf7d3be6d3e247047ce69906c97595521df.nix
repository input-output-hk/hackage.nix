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
      specVersion = "1.2";
      identifier = {
        name = "jpeg";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeroen@cs.uu.nl";
      author = "Jeroen Fokker";
      homepage = "";
      url = "";
      synopsis = "A library for decoding JPEG files written in pure Haskell";
      description = "JPEG Decompression library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }