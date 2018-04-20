{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "collada-output";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tillmann.Vogt@rwth-aachen.de";
        author = "Tillmann Vogt";
        homepage = "";
        url = "";
        synopsis = "Generate animated 3d objects in COLLADA";
        description = "Generate a COLLADA file with textures, materials, animations, ...";
        buildType = "Simple";
      };
      components = {
        collada-output = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.containers
            hsPkgs.Vec
            hsPkgs.time
            hsPkgs.SVGPath
          ];
        };
        exes = { Examples = {}; };
      };
    }