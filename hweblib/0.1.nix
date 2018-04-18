{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hweblib";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aycan.irican@core.gen.tr";
        author = "Aycan iRiCAN";
        homepage = "http://github.com/aycanirican/hweblib";
        url = "";
        synopsis = "Haskell Web Library";
        description = "The library includes attoparsec based incremental parsers for\nrfc2616 (http) and rfc3986 (uri). rfcs 2045, 2046, 2109, 2388, 2617\nare planned.";
        buildType = "Simple";
      };
      components = {
        hweblib = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.monads-fd
            hsPkgs.transformers
            hsPkgs.attoparsec
          ];
        };
      };
    }