{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-stream";
          version = "4.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Repa Development Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Stream functions not present in the vector library.";
        description = "Stream functions not present in the vector library.";
        buildType = "Simple";
      };
      components = {
        "repa-stream" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.mtl
            hsPkgs.repa-scalar
          ];
        };
      };
    }