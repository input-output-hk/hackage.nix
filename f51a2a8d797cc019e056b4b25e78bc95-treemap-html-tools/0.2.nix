{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      testing = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "treemap-html-tools";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        homepage = "http://rampa.sk/static/treemap-html.html";
        url = "";
        synopsis = "Treemap related commands for producing foldable TreeMap HTML.";
        description = "Contains various commands for TreeMap generation,\nfor example dirmap produces the foldable treemap for\ngiven directory tree structure.";
        buildType = "Simple";
      };
      components = {
        treemap-html-tools = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.regex-posix
            hsPkgs.treemap-html
            hsPkgs.directory
            hsPkgs.xml
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.Cabal
          ];
        };
        exes = {
          dirmap = {};
          xml2treemap = {};
        };
      };
    }