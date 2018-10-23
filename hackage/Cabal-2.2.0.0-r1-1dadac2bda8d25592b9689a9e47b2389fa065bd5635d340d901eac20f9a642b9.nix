{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bundled-binary-generic = false;
      old-directory = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Cabal";
        version = "2.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2003-2018, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
      buildType = "Simple";
    };
    components = {
      "Cabal" = {
        depends  = ((([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.parsec)
        ] ++ (if flags.old-directory
          then [
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.old-time)
          ]
          else [
            (hsPkgs.directory)
            (hsPkgs.process)
          ])) ++ [
          (hsPkgs.binary)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.integer-logarithms)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
        "parser-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-golden)
            (hsPkgs.Diff)
            (hsPkgs.Cabal)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.8") (hsPkgs.tree-diff);
        };
        "check-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.Diff)
            (hsPkgs.Cabal)
          ];
        };
        "custom-setup-tests" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
        "hackage-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.optparse-applicative)
            (hsPkgs.tar)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.8") (hsPkgs.tree-diff);
        };
      };
    };
  }