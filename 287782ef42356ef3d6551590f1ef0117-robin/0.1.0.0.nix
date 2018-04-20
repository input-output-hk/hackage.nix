{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "robin";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2013-2015 Karl Voelker";
        maintainer = "robin@karlv.net";
        author = "Karl Voelker";
        homepage = "https://www.github.com/ktvoelker/robin";
        url = "";
        synopsis = "A build daemon for Haskell development";
        description = "Robin is a daemon for Haskell developers. It runs a build whenever a source\nfile changes. Cabal, Stack, and custom builds are all supported.";
        buildType = "Simple";
      };
      components = {
        exes = {
          robin = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.hdaemonize
              hsPkgs.lens
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }