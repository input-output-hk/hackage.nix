{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "leksah";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2007 Juergen Nicklisch-Franken";
        maintainer = "Juergen Nicklisch-Franken";
        author = "Jutaro (Juergen Nicklisch-Franken)";
        homepage = "";
        url = "http://code.haskell.org/leksah";
        synopsis = "Genuine Haskell Face";
        description = "An Integrated Development Environment for Haskell written in Haskell.";
        buildType = "Custom";
      };
      components = {
        exes = {
          leksah = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.Cabal
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.old-time
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.directory
              hsPkgs.gtk
              hsPkgs.glib
              hsPkgs.sourceview
              hsPkgs.ghc
              hsPkgs.binary
              hsPkgs.bytestring
            ];
          };
        };
      };
    }