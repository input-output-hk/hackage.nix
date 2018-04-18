{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pointful";
          version = "1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikhail Glushenkov <mikhail.glushenkov@gmail.com>";
        author = "Thomas Jäger et al.";
        homepage = "http://github.com/23Skidoo/pointful";
        url = "";
        synopsis = "Pointful refactoring tool";
        description = "Stand-alone command-line version of the pointful plugin\nfor Lambdabot.";
        buildType = "Simple";
      };
      components = {
        pointful = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haskell-src-exts
            hsPkgs.mtl
            hsPkgs.syb
            hsPkgs.transformers
          ];
        };
        exes = {
          pointful = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.mtl
              hsPkgs.syb
              hsPkgs.transformers
            ];
          };
        };
      };
    }