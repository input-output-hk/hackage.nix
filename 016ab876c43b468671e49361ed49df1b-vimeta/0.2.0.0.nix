{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      maintainer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vimeta";
          version = "0.2.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (c) 2013-2015 Peter Jones";
        maintainer = "Peter Jones <pjones@devalot.com>";
        author = "Peter Jones <pjones@devalot.com>";
        homepage = "http://github.com/pjones/vimeta";
        url = "";
        synopsis = "Frontend for video metadata tagging tools";
        description = "Vimeta is a tool to fetch video metadata from the interwebs and\nupdate video files using a tagging tool.";
        buildType = "Simple";
      };
      components = {
        vimeta = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.byline
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.either
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.optparse-applicative
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.themoviedb
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.transformers
            hsPkgs.xdg-basedir
            hsPkgs.yaml
          ];
        };
        exes = {
          vimeta = {
            depends  = [
              hsPkgs.base
              hsPkgs.vimeta
            ];
          };
        };
      };
    }