{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "not-gloss";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "Painless 3D graphics, no affiliation with gloss";
        description = "";
        buildType = "Simple";
      };
      components = {
        not-gloss = {
          depends  = [
            hsPkgs.base
            hsPkgs.GLUT
            hsPkgs.time
            hsPkgs.OpenGLRaw
            hsPkgs.spatial-math
          ];
        };
        exes = {
          not-gloss-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLUT
              hsPkgs.spatial-math
              hsPkgs.OpenGLRaw
              hsPkgs.time
              hsPkgs.not-gloss
            ];
          };
        };
      };
    }