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
      specVersion = "1.2";
      identifier = {
        name = "colada";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/colada";
      url = "";
      synopsis = "Colada implements incremental word class class induction\nusing online LDA";
      description = "Colada implements incremental word class class induction using\nLatent Dirichlet Allocation (LDA) with an Online Gibbs sampler.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ListZipper)
          (hsPkgs.fclabels)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.monad-atom)
          (hsPkgs.cereal)
          (hsPkgs.cmdargs)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.swift-lda)
        ];
      };
      exes = {
        "colada" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ListZipper)
            (hsPkgs.fclabels)
            (hsPkgs.ghc-prim)
            (hsPkgs.vector)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.monad-atom)
            (hsPkgs.cereal)
            (hsPkgs.cmdargs)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.swift-lda)
          ];
        };
      };
    };
  }