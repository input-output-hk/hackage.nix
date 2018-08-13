{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      bundled-binary-generic = false;
      old-directory = false;
      parsec = false;
      parsec-struct-diff = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Cabal";
        version = "2.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2003-2017, Cabal Development Team (see AUTHORS file)";
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
        depends  = ((((([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.time)
        ] ++ (if _flags.old-directory
          then [
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.process)
          ]
          else [
            (hsPkgs.directory)
            (hsPkgs.process)
          ])) ++ [
          (hsPkgs.binary)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (system.isWindows) [
          (hsPkgs.Win32)
          (hsPkgs.base)
        ]) ++ pkgs.lib.optionals (_flags.parsec) [
          (hsPkgs.transformers)
          (hsPkgs.parsec)
        ];
        build-tools = pkgs.lib.optional (_flags.parsec) (hsPkgs.buildPackages.alex);
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.pretty)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
        "parser-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.Cabal)
          ];
        };
        "parser-hackage-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tar)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
          ] ++ pkgs.lib.optionals (_flags.parsec-struct-diff) [
            (hsPkgs.generics-sop)
            (hsPkgs.these)
            (hsPkgs.singleton-bool)
            (hsPkgs.keys)
          ];
        };
      };
    };
  }