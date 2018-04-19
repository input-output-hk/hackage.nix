{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cocoa = false;
      pango = false;
      vte = false;
      vty = true;
      scion = false;
      ghcapi = false;
      profiling = false;
      hacking = false;
      testing = true;
      dochack = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi";
          version = "0.6.6.0";
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
          depends  = ((((((([
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
            hsPkgs.cautious-file
            hsPkgs.concrete-typerep
            hsPkgs.derive
            hsPkgs.data-accessor
            hsPkgs.data-accessor-mtl
            hsPkgs.data-accessor-template
            hsPkgs.dlist
            hsPkgs.dyre
            hsPkgs.filepath
            hsPkgs.fingertree
            hsPkgs.ghc-paths
            hsPkgs.hashable
            hsPkgs.hint
            hsPkgs.mtl
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
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32) ++ pkgs.lib.optionals _flags.testing [
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
          ]) ++ pkgs.lib.optionals _flags.scion [
            hsPkgs.scion
            hsPkgs.ghc
            hsPkgs.ghc-syb-utils
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
            ] ++ pkgs.lib.optional (!_flags.dochack) hsPkgs.yi;
          };
          yi = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optional (!_flags.dochack) hsPkgs.yi;
          };
        };
      };
    }