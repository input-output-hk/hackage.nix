{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-convert";
          version = "4.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Repa Development Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Packing and unpacking flat tables.";
        description = "Packing and unpacking flat tables.";
        buildType = "Simple";
      };
      components = {
        repa-convert = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.double-conversion
            hsPkgs.repa-scalar
          ];
        };
      };
    }