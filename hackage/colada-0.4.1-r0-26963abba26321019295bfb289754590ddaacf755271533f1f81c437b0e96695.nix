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
      identifier = { name = "colada"; version = "0.4.1"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ListZipper" or (errorHandler.buildDepError "ListZipper"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monad-atom" or (errorHandler.buildDepError "monad-atom"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."swift-lda" or (errorHandler.buildDepError "swift-lda"))
          ];
        buildable = true;
        };
      exes = {
        "colada" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ListZipper" or (errorHandler.buildDepError "ListZipper"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-atom" or (errorHandler.buildDepError "monad-atom"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."swift-lda" or (errorHandler.buildDepError "swift-lda"))
            ];
          buildable = true;
          };
        };
      };
    }