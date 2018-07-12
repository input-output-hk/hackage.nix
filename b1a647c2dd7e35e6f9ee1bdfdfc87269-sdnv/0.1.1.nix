{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdnv";
          version = "0.1.1";
        };
        license = "BSD-2-Clause";
        copyright = "Lana Black";
        maintainer = "Lana Black <lanablack@amok.cc>";
        author = "Lana Black";
        homepage = "";
        url = "";
        synopsis = "Self-delimiting numeric values encoding library";
        description = "Self-delimiting numeric values decoding/encoding implementation conformant with RFC6256.";
        buildType = "Simple";
      };
      components = {
        "sdnv" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
      };
    }