{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bbi";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "Tools for reading Big Binary Indexed files, e.g., bigBed, bigWig";
        description = "";
        buildType = "Simple";
      };
      components = {
        bbi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.zlib
          ];
        };
      };
    }