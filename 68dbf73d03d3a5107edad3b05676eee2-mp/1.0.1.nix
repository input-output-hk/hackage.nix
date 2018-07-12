{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "mp";
          version = "1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Piotr Borek <piotrborek@op.pl>";
        author = "Piotr Borek <piotrborek@op.pl>";
        homepage = "http://bitbucket.org/borekpiotr/linux-music-player";
        url = "";
        synopsis = "Music player for linux.";
        description = "Music player for linux.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "mp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-gi-base
              hsPkgs.haskell-gi-overloading
              hsPkgs.gi-gobject
              hsPkgs.gi-glib
              hsPkgs.gi-gst
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.binary
              hsPkgs.network
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.utf8-string
              hsPkgs.ConfigFile
              hsPkgs.MissingH
              hsPkgs.resourcet
              hsPkgs.exceptions
              hsPkgs.async
              hsPkgs.daemons
              hsPkgs.vty
              hsPkgs.lens
              hsPkgs.containers
              hsPkgs.template-haskell
              hsPkgs.simple-ui
            ];
          };
        };
      };
    }