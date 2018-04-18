{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dotgen";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "https://github.com/ku-fpg/dotgen";
        url = "";
        synopsis = "A simple interface for building .dot graph files.";
        description = "This package provides a simple interface for building .dot graph files,\nfor input into the dot and graphviz tools.\nIt includes a monadic interface for building graphs.";
        buildType = "Simple";
      };
      components = {
        dotgen = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          dotgen-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.dotgen
            ];
          };
        };
      };
    }