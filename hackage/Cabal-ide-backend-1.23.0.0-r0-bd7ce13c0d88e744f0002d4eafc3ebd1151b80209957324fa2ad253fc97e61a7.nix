{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bundled-binary-generic = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Cabal-ide-backend";
        version = "1.23.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2003-2006, Isaac Jones\n2005-2011, Duncan Coutts";
      maintainer = "cabal-devel@haskell.org";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "NOTE: This is a temporary fork of Cabal necessary for\n<https://github.com/fpco/ide-backend>. It is not intended as a replacement for\nthe standard Cabal package, and should in general not be used at all outside of\nide-backend.\n\nThe Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
      buildType = "Custom";
    };
    components = {
      "Cabal-ide-backend" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
        ] ++ [
          (hsPkgs.binary)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
        "package-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal-ide-backend)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.bytestring)
            (hsPkgs.regex-posix)
            (hsPkgs.old-time)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }