{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pokemon-go-protobuf-types";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Ricky Elrod";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "https://github.com/relrod/pokemon-go-protobuf-types";
        url = "";
        synopsis = "Haskell types for the Pokemon Go protobuf protocol.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "pokemon-go-protobuf-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.proto-lens
            hsPkgs.lens-family
            hsPkgs.data-default-class
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.bytestring
          ];
        };
      };
    }