{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cocoa = false;
      pango = false;
      vte = false;
      vty = true;
      scion = false;
      ghcapi = false;
      hacking = false;
      testing = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi";
          version = "0.6.3.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "yi-devel@googlegroups.com";
        author = "AUTHORS";
        homepage = "http://haskell.org/haskellwiki/Yi";
        url = "";
        synopsis = "The Haskell-Scriptable Editor";
        description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
        buildType = "Simple";
      };
      components = {
        yi = {
          depends  = ((((([
            hsPkgs.Cabal
            hsPkgs.Diff
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.old-locale
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.derive
            hsPkgs.data-accessor
            hsPkgs.data-accessor-monads-fd
            hsPkgs.data-accessor-template
            hsPkgs.dlist
            hsPkgs.dyre
            hsPkgs.filepath
            hsPkgs.fingertree
            hsPkgs.ghc-paths
            hsPkgs.hint
            hsPkgs.monads-fd
            hsPkgs.pointedlist
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.rosezipper
            hsPkgs.split
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.uniplate
            hsPkgs.unix-compat
          ] ++ pkgs.lib.optionals (!system.isWindows) [
            hsPkgs.cautious-file
            hsPkgs.unix
          ]) ++ pkgs.lib.optionals _flags.testing [
            hsPkgs.QuickCheck
            hsPkgs.random
          ]) ++ pkgs.lib.optionals _flags.cocoa [
            hsPkgs.HOC
            hsPkgs.HOC-AppKit
            hsPkgs.HOC-Foundation
          ]) ++ pkgs.lib.optionals _flags.pango [
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.pango
          ]) ++ pkgs.lib.optionals _flags.vte [
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.pango
            hsPkgs.vte
            hsPkgs.executable-path
          ]) ++ pkgs.lib.optionals _flags.vty [
            hsPkgs.unix-compat
            hsPkgs.vty
          ];
        };
        exes = {
          parserTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.yi
            ];
          };
          yi = {
            depends  = [
              hsPkgs.base
              hsPkgs.yi
            ];
          };
        };
      };
    }