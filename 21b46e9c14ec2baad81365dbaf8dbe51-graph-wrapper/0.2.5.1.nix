{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "graph-wrapper";
          version = "0.2.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>, Sönke Hahn <soenkehahn@gmail.com>";
        author = "Max Bolingbroke";
        homepage = "https://github.com/soenkehahn/graph-wrapper";
        url = "";
        synopsis = "A wrapper around the standard Data.Graph with a less awkward interface";
        description = "A wrapper around the standard Data.Graph with a less awkward interface";
        buildType = "Simple";
      };
      components = {
        graph-wrapper = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }