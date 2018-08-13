{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-mod";
        version = "4.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "The ghc-mod command is a backend command to enrich\nHaskell programming on editors including\nEmacs, Vim, and Sublime.\nThe ghc-mod command is based on ghc-mod library\nwhich is a wrapper of GHC API.\nThis package includes the ghc-mod command,\nthe ghc-mod library, and Emacs front-end\n(for historical reasons).\nFor more information, please see its home page.";
      buildType = "Simple";
    };
    components = {
      "ghc-mod" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.hlint)
          (hsPkgs.io-choice)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhc && compiler.version.lt "7.7"
          then [
            (hsPkgs.convertible)
            (hsPkgs.Cabal)
          ]
          else [ (hsPkgs.Cabal) ]);
      };
      exes = {
        "ghc-mod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-mod)
          ];
        };
        "ghc-modi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
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
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.hlint)
            (hsPkgs.io-choice)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ] ++ (if compiler.isGhc && compiler.version.lt "7.7"
            then [
              (hsPkgs.convertible)
              (hsPkgs.Cabal)
            ]
            else [
              (hsPkgs.Cabal)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6.0") (hsPkgs.executable-path);
        };
      };
    };
  }