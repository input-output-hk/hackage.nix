{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pred-trie";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Predicative tries";
        description = "";
        buildType = "Simple";
      };
      components = {
        pred-trie = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.composition-extra
            hsPkgs.tries
            hsPkgs.QuickCheck
          ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.pred-trie
              hsPkgs.tries
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.semigroups
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.composition-extra
              hsPkgs.QuickCheck
              hsPkgs.sets
            ];
          };
        };
      };
    }