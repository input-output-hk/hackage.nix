{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-experiment";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2014. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://github.com/dsorokin/aivika-experiment";
        url = "";
        synopsis = "Simulation experiments for the Aivika library";
        description = "This package allows defining simulation experiments for the Aivika\npackage. Such experiments define in declarative manner what should be\nsimulated and in which view the simulation results should be\ngenerated. It can be charts, tables and so on.\n\nThe library is extensible and you can add new views for the results.\n";
        buildType = "Simple";
      };
      components = {
        "aivika-experiment" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.split
            hsPkgs.network-uri
            hsPkgs.parallel-io
            hsPkgs.aivika
          ];
        };
      };
    }