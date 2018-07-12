{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "collada-types";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tillk.vogt@googlemail.com";
        author = "Tillmann Vogt";
        homepage = "";
        url = "";
        synopsis = "Data exchange between graphic applications";
        description = "Collada is the standard graphics format for data exchange between 3d tools. As well as the file format also its representation as an algebraic data type could be used to make libraries more composable. Please propose changes.";
        buildType = "Simple";
      };
      components = {
        "collada-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.OpenGL
            hsPkgs.enumerable
            hsPkgs.tuple-gen
            hsPkgs.vector
            hsPkgs.tuple
          ];
        };
      };
    }