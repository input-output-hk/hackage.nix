{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "not-gloss-examples";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "examples for not-gloss";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          not-gloss-display = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.spatial-math
              hsPkgs.base
            ];
          };
          not-gloss-animate = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.spatial-math
              hsPkgs.base
            ];
          };
          not-gloss-simulate = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.spatial-math
              hsPkgs.base
            ];
          };
        };
      };
    }