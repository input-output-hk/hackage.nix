{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haggis";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Tycho Andersen <tycho@tycho.ws>";
        author = "Tycho Andersen";
        homepage = "http://github.com/tych0/haggis";
        url = "";
        synopsis = "A static site generator with blogging/comments support";
        description = "Haggis is a static site generator with support for blogging.\nHaggis has very few restrictions on how you manage your content,\nand supports any markup format that pandoc does.";
        buildType = "Simple";
      };
      components = {
        "haggis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.pandoc
            hsPkgs.pandoc-types
            hsPkgs.xmlhtml
            hsPkgs.containers
            hsPkgs.hquery
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.split
            hsPkgs.text
            hsPkgs.rss
            hsPkgs.network
            hsPkgs.MissingH
            hsPkgs.HDBC
            hsPkgs.HDBC-sqlite3
            hsPkgs.convertible
          ];
        };
        exes = {
          "haggis" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filemanip
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.haggis
            ];
          };
        };
      };
    }