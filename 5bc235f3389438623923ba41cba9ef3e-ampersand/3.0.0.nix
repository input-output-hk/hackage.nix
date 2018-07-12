{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = true;
      library = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ampersand";
          version = "3.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Stef Joosten";
        maintainer = "stef.joosten@ou.nl";
        author = "Stef Joosten";
        homepage = "ampersand.sourceforge.net";
        url = "";
        synopsis = "Toolsuite for automated design of business processes.";
        description = "You can define your business processes by means of rules, written in Relation Algebra.";
        buildType = "Custom";
      };
      components = {
        "ampersand" = {
          depends  = [
            hsPkgs.graphviz
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.pandoc-types
            hsPkgs.pandoc
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.time
            hsPkgs.SpreadsheetML
            hsPkgs.process
            hsPkgs.split
            hsPkgs.old-locale
          ];
        };
        exes = {
          "ampersand" = {
            depends  = [
              hsPkgs.ampersand
              hsPkgs.graphviz
              hsPkgs.filepath
              hsPkgs.base
            ];
          };
        };
      };
    }