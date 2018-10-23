{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "ghc-mod";
        version = "5.6.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>,\nDaniel Gröber <dxld@darkboxed.org>,\nAlejandro Serrano <trupill@gmail.com>,\nNikolay Yakimov <root@livid.pp.ru>";
      homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "ghc-mod is a backend program to enrich Haskell programming in editors. It\nstrives to offer most of the features one has come to expect from modern IDEs\nin any editor.\nghc-mod provides a library for other haskell programs to use as well as a\nstandalone program for easy editor integration. All of the fundamental\nfunctionality of the frontend program can be accessed through the library\nhowever many implementation details are hidden and if you want to\nsignificantly extend ghc-mod you should submit these changes upstream instead\nof implementing them on top of the library.\nFor more information, please see its home page.";
      buildType = "Custom";
    };
    components = {
      "ghc-mod" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.cabal-helper)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.hlint)
          (hsPkgs.monad-journal)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.split)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.text)
          (hsPkgs.djinn-ghc)
          (hsPkgs.fclabels)
          (hsPkgs.extra)
          (hsPkgs.pipes)
          (hsPkgs.safe)
          (hsPkgs.optparse-applicative)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.convertible)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0") (hsPkgs.ghc-boot);
      };
      exes = {
        "ghc-mod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.mtl)
            (hsPkgs.ghc)
            (hsPkgs.monad-control)
            (hsPkgs.fclabels)
            (hsPkgs.optparse-applicative)
            (hsPkgs.ghc-mod)
          ];
        };
        "ghc-modi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.ghc-mod)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends  = [ (hsPkgs.hspec) ];
        };
      };
    };
  }