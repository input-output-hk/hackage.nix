{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-convert";
          version = "4.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Repa Development Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Packing and unpacking binary data.";
        description = "Packing and unpacking binary data.";
        buildType = "Simple";
      };
      components = {
        "repa-convert" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
      };
    }