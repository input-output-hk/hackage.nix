{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ploton";
          version = "1.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 ishiy1993";
        maintainer = "y.ishihara.1993@gmail.com";
        author = "ishiy";
        homepage = "https://github.com/ishiy1993/ploton#readme";
        url = "";
        synopsis = "A useful cli tool to draw figures";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ploton = {
          depends  = [
            hsPkgs.base
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
        exes = {
          ploton = {
            depends  = [
              hsPkgs.base
              hsPkgs.ploton
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.ploton
            ];
          };
        };
      };
    }