{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "isobmff-builder";
          version = "0.2.0.3";
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
          ];
        };
      };
    }