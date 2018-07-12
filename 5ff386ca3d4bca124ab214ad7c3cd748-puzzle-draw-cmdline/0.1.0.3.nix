{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cairo = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "puzzle-draw-cmdline";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rfvollmert@gmail.com";
        author = "Robert Vollmert";
        homepage = "";
        url = "";
        synopsis = "Creating graphics for pencil puzzles, command line tools.";
        description = "Companion executable to puzzle-draw. Separate to keep\nthe dependency on diagrams-cairo out of the library.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "drawpuzzle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.puzzle-draw
              hsPkgs.diagrams-lib
              hsPkgs.yaml
              hsPkgs.optparse-applicative
              hsPkgs.aeson
              hsPkgs.filepath
            ] ++ (if _flags.cairo
              then [ hsPkgs.diagrams-cairo ]
              else [ hsPkgs.diagrams-svg ]);
          };
        };
      };
    }