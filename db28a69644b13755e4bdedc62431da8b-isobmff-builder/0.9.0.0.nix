{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "isobmff-builder";
          version = "0.9.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Sven Heyll";
        maintainer = "sven.heyll@gmail.com";
        author = "Sven Heyll";
        homepage = "https://github.com/sheyll/isobmff-builder#readme";
        url = "";
        synopsis = "A (bytestring-) builder for the ISO-14496-12 base media file format";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        isobmff-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.type-list
            hsPkgs.data-default
            hsPkgs.vector-sized
            hsPkgs.singletons
            hsPkgs.lens
            hsPkgs.time
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.isobmff-builder
              hsPkgs.binary
              hsPkgs.text
            ];
          };
        };
      };
    }