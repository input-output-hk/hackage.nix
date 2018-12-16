{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { shelltest = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ghc-mod";
        version = "5.8.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>,\nDaniel Gröber <dxld@darkboxed.org>,\nAlejandro Serrano <trupill@gmail.com>,\nNikolay Yakimov <root@livid.pp.ru>";
      homepage = "https://github.com/DanielG/ghc-mod";
      url = "";
      synopsis = "Happy Haskell Hacking";
      description = "ghc-mod is a backend program to enrich Haskell programming in editors. It\nstrives to offer most of the features one has come to expect from modern IDEs\nin any editor.\nghc-mod provides a library for other haskell programs to use as well as a\nstandalone program for easy editor integration. All of the fundamental\nfunctionality of the frontend program can be accessed through the library\nhowever many implementation details are hidden and if you want to\nsignificantly extend ghc-mod you should submit these changes upstream instead\nof implementing them on top of the library.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.base)
          (hsPkgs.djinn-ghc)
          (hsPkgs.extra)
          (hsPkgs.fclabels)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hlint)
          (hsPkgs.monad-control)
          (hsPkgs.monad-journal)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pipes)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.cabal-helper)
          (hsPkgs.ghc)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0") (hsPkgs.ghc-boot)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.convertible);
      };
      exes = {
        "ghc-mod" = {
          depends = [
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.base)
            (hsPkgs.fclabels)
            (hsPkgs.monad-control)
            (hsPkgs.optparse-applicative)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.ghc)
            (hsPkgs.ghc-mod)
          ];
        };
        "ghc-modi" = {
          depends = [
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.base)
            (hsPkgs.ghc-mod)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends = ([
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.base)
            (hsPkgs.fclabels)
            (hsPkgs.hspec)
            (hsPkgs.monad-journal)
            (hsPkgs.split)
            (hsPkgs.temporary)
            (hsPkgs.cabal-helper)
            (hsPkgs.ghc)
            (hsPkgs.ghc-mod)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.convertible)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0") (hsPkgs.ghc-boot);
        };
        "shelltest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.temporary)
            (hsPkgs.ghc-mod)
          ];
        };
      };
    };
  }