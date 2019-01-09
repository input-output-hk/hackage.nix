{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hhp"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "https://github.com/kazu-yamamoto/hhp";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "The hhp command is a backend command to enrich\nHaskell programming on editors.\nThe hhpc/hhpi commands are based on HHP library\nwhich is a wrapper of GHC API and Cabal API.\nThis package includes the hhpc command,\nthe hhpi command,\nthe HHP library, and Emacs front-end.\nFor more information, please see its home page.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.hlint)
          (hsPkgs.io-choice)
          (hsPkgs.process)
          (hsPkgs.syb)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2") (hsPkgs.ghc-boot);
        };
      exes = {
        "hhpc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.hhp)
            ];
          };
        "hhpi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.hhp)
            ];
          };
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.hspec)
            (hsPkgs.io-choice)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.hlint)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2") (hsPkgs.ghc-boot);
          };
        };
      };
    }