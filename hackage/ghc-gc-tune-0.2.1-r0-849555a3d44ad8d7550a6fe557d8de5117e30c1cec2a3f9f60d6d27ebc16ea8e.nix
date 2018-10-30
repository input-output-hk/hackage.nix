{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ghc-gc-tune";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/ghc-gc-tune";
      url = "";
      synopsis = "Graph performance of Haskell programs with different GC flags";
      description = "ghc-gc-tune runs your compiled Haskell program with\ndifferent GC flags, and generates a graph of time as\nthose GC settings vary. ghc-gc-tune lets your automate\nthe task of finding good GC flags for your program, in\norder to get the best performance from it.\n\nGraphs are rendered with gnuplot, so make sure that is\ninstalled.\n\nExample use:\n\n> ghc -O2 --make binarytrees.hs\n> ghc-gc-tune -t svg binarytrees 12\n\nExample output:\n\n<http://haskell.org/haskellwiki/Ghc-gc-tune>\n\nFor more information on GHC garbage collector settings,\nsee <http://haskell.org/ghc/docs/6.12.1/html/users_guide/runtime-control.html#rts-options-gc>\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-gc-tune" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }