{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      base3 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Cabal";
          version = "1.12.0";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2006, Isaac Jones\n2005-2011, Duncan Coutts";
        maintainer = "cabal-devel@haskell.org";
        author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
        homepage = "http://www.haskell.org/cabal/";
        url = "";
        synopsis = "A framework for packaging Haskell software";
        description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
        buildType = "Custom";
      };
      components = {
        Cabal = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.filepath
          ] ++ [ hsPkgs.base ]) ++ [
            hsPkgs.base
          ]) ++ optionals _flags.base3 [
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.old-time
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.pretty
          ]) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.Cabal
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.extensible-exceptions
              hsPkgs.bytestring
              hsPkgs.unix
            ];
          };
        };
      };
    }