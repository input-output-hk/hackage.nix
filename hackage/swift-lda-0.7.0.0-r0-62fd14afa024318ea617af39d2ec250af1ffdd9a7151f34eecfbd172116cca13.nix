{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "swift-lda"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Grzegorz Chrupała <pitekus@gmail.com>";
      author = "Grzegorz Chrupała <pitekus@gmail.com>";
      homepage = "https://bitbucket.org/gchrupala/colada";
      url = "";
      synopsis = "Online sampler for Latent Dirichlet Allocation";
      description = "Online Gibbs sampler for Latent Dirichlet Allocation.\nLDA is a generative admixture model frequently used\nfor topic modeling and other applications. The primary\ngoal of this implementation is to be used for probabilistic\nsoft word class induction.\nThe sampler can be used in an online as well as batch mode.\nThis package uses an imperative implementation in the ST monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }