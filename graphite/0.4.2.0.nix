{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "graphite";
          version = "0.4.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Daniel Campoverde";
        maintainer = "alx@sillybytes.net";
        author = "Daniel Campoverde";
        homepage = "https://github.com/alx741/graphite#readme";
        url = "";
        synopsis = "Graphs and networks library";
        description = "Represent, analyze and visualize graphs";
        buildType = "Simple";
      };
      components = {
        graphite = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.process
            hsPkgs.graphviz
            hsPkgs.QuickCheck
            hsPkgs.cassava
          ];
        };
        tests = {
          graphite-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.graphite
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }