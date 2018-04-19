{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      old-directory = false;
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-install";
          version = "1.18.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2005 Lemmih <lemmih@gmail.com>\n2006 Paolo Martini <paolo@nemail.it>\n2007 Bjorn Bringert <bjorn@bringert.net>\n2007 Isaac Potoczny-Jones <ijones@syntaxpolice.org>\n2007-2012 Duncan Coutts <duncan@community.haskell.org>";
        maintainer = "cabal-devel@haskell.org";
        author = "Lemmih <lemmih@gmail.com>\nPaolo Martini <paolo@nemail.it>\nBjorn Bringert <bjorn@bringert.net>\nIsaac Potoczny-Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
        homepage = "http://www.haskell.org/cabal/";
        url = "";
        synopsis = "The command-line interface for Cabal and Hackage.";
        description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal = {
            depends  = (([
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.HTTP
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.pretty
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.zlib
            ] ++ (if _flags.old-directory
              then [
                hsPkgs.directory
                hsPkgs.old-time
                hsPkgs.process
              ]
              else [
                hsPkgs.directory
                hsPkgs.process
              ])) ++ [
              hsPkgs.network-uri
              hsPkgs.network
            ]) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
        tests = {
          unit-tests = {
            depends  = (([
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.HTTP
              hsPkgs.zlib
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional _flags.old-directory hsPkgs.old-time) ++ [
              hsPkgs.network-uri
              hsPkgs.network
            ]) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }