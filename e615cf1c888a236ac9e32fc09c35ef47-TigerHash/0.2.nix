{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "TigerHash";
        version = "0.2";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2010 Nikolay Orlyuk";
      maintainer = "virkony@gmail.com";
      author = "Nikolay Orlyuk";
      homepage = "";
      url = "";
      synopsis = "TigerHash with C implementation";
      description = "This library provides Tiger Hash algorithm implemented in C\nand built with Haskell interface. As well there is implementation\nof Merkle Tree known as TTH (Tiger Tree Hash).";
      buildType = "Simple";
    };
    components = {
      "TigerHash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.dataenc)
        ];
      };
    };
  }