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
      specVersion = "1.10";
      identifier = {
        name = "ghc-mod";
        version = "5.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>\nDaniel Gröber <dxld@darkboxed.org>\nAlejandro Serrano <trupill@gmail.com>";
      homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "The ghc-mod command is a backend command to enrich\nHaskell programming on editors including\nEmacs, Vim, and Sublime.\nThe ghc-mod command is based on ghc-mod library\nwhich is a wrapper of GHC API.\nThis package includes the ghc-mod command,\nthe ghc-mod library, and Emacs front-end\n(for historical reasons).\nFor more information, please see its home page.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.hlint)
          (hsPkgs.io-choice)
          (hsPkgs.monad-journal)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.split)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.text)
          (hsPkgs.djinn-ghc)
        ] ++ (if compiler.isGhc && compiler.version.ge "7.8"
          then [ (hsPkgs.Cabal) ]
          else [
            (hsPkgs.convertible)
            (hsPkgs.Cabal)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.4.2") (hsPkgs.random);
      };
      exes = {
        "ghc-mod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.ghc)
            (hsPkgs.ghc-mod)
          ];
        };
        "ghc-modi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.split)
            (hsPkgs.ghc)
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
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.hlint)
            (hsPkgs.io-choice)
            (hsPkgs.monad-journal)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.hspec)
            (hsPkgs.split)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.text)
            (hsPkgs.djinn-ghc)
          ] ++ (if compiler.isGhc && compiler.version.ge "7.8"
            then [ (hsPkgs.Cabal) ]
            else [
              (hsPkgs.convertible)
              (hsPkgs.Cabal)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.executable-path);
        };
      };
    };
  }