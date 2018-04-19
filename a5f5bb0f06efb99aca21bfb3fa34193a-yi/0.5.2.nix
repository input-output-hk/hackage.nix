{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      ghcapi = false;
      vty = true;
      gtk = true;
      pango = true;
      cocoa = true;
      testing = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yi";
          version = "0.5.2";
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
        yi = {};
        exes = {
          yi = {
            depends  = (((((([
              hsPkgs.Cabal
              hsPkgs.Diff
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.fingertree
              hsPkgs.ghc-paths
              hsPkgs.parsec
              hsPkgs.unix-compat
              hsPkgs.pureMD5
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.rosezipper
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ pkgs.lib.optional _flags.gtk hsPkgs.gtk) ++ pkgs.lib.optional _flags.pango hsPkgs.gtk) ++ optionals _flags.cocoa [
              hsPkgs.HOC
              hsPkgs.HOC-AppKit
              hsPkgs.HOC-Foundation
            ]) ++ optionals _flags.ghcapi [
              hsPkgs.ghc
              hsPkgs.haskell98
            ]) ++ pkgs.lib.optional _flags.testing hsPkgs.QuickCheck;
          };
        };
      };
    }