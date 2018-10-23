{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "lda";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/colada";
      url = "";
      synopsis = "Online Latent Dirichlet Allocation";
      description = "Online Gibbs sampler for Latent Dirichlet Allocation.\nLDA is a generative admixture model frequently used\nfor topic modeling and other applications. The primary\ngoal of this implementation is to be used for probabilistic\nsoft word class induction.\nThe sampler can be used in an online as well as batch mode.";
      buildType = "Simple";
    };
    components = {
      "lda" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random-fu)
          (hsPkgs.rvar)
          (hsPkgs.random-source)
          (hsPkgs.mtl)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
        ];
      };
    };
  }