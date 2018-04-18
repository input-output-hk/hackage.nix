{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jot";
          version = "0.1.0.3";
        };
        license = "ISC";
        copyright = "2018 Daniel Firth";
        maintainer = "locallycompact@gmail.com";
        author = "Daniel Firth";
        homepage = "http://gitlab.com/locallycompact/jot";
        url = "";
        synopsis = "Tiny markdown notebook";
        description = "Jot is a little notebook. It makes little notepages with timestamps that you can customize.";
        buildType = "Simple";
      };
      components = {
        exes = {
          jot = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.dhall
              hsPkgs.docopt
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.time
              hsPkgs.turtle
              hsPkgs.yaml
            ];
          };
        };
      };
    }