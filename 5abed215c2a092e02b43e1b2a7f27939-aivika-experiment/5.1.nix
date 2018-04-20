{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-experiment";
          version = "5.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2017. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com";
        url = "";
        synopsis = "Simulation experiments for the Aivika library";
        description = "This package allows defining simulation experiments based on the aivika [1]\nand aivika-transformers [2] packages. Such experiments define in declarative\nmanner what should be simulated and in which view the simulation results should\nbe generated. It can directly return charts, tables and so on. Additionally, it\ncan save the results in SQL databases.\n\nThe library is extensible and you can add new views for the results.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n\n\\[2] <http://hackage.haskell.org/package/aivika-transformers>\n";
        buildType = "Simple";
      };
      components = {
        aivika-experiment = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.split
            hsPkgs.network-uri
            hsPkgs.parallel-io
            hsPkgs.aivika
            hsPkgs.aivika-transformers
          ];
        };
      };
    }