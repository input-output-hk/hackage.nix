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
        name = "zlib-enum";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Malte Sommerkorn <malte.sommerkorn@googlemail.com>";
      author = "Malte Sommerkorn <malte.sommerkorn@googlemail.com>";
      homepage = "http://github.com/maltem/zlib-enum";
      url = "";
      synopsis = "Enumerator interface for zlib compression";
      description = "zlib-enum is a stop-gap package to provide enumeratees for\nzlib compression/decompression.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.enumerator)
          (hsPkgs.zlib-bindings)
        ];
      };
    };
  }