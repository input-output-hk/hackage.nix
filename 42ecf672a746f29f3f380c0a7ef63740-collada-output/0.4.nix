{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "collada-output";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tillmann.Vogt@rwth-aachen.de";
        author = "Tillmann Vogt";
        homepage = "";
        url = "";
        synopsis = "Generate animated 3d objects in COLLADA";
        description = "Generate a COLLADA file with textures, materials, animations, ... It can be used to visualize algorithms that produce a stream of positions, see <http://www.youtube.com/watch?v=ZpJzG28Yv8Y>";
        buildType = "Simple";
      };
      components = {
        collada-output = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.SVGPath
            hsPkgs.collada-types
          ];
        };
        exes = { Examples = {}; };
      };
    }