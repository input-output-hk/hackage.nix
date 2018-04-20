{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      testing = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "treemap-html";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
        homepage = "http://rampa.sk/static/treemap-html.html";
        url = "";
        synopsis = "Generates HTML for Data.Tree as TreeMap";
        description = "Generates HTML for Data.Tree as TreeMap which\nis possible explore directly in browser because\nof small javascript code included.\nEach node is displayed as white box without\nany nested boxes inside.";
        buildType = "Simple";
      };
      components = {
        treemap-html = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.regex-posix
            hsPkgs.filepath
            hsPkgs.html
            hsPkgs.containers
            hsPkgs.Cabal
          ];
        };
      };
    }