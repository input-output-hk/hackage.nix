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
      specVersion = "1.10";
      identifier = { name = "mltool"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2018 Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/aligusnet/mltool";
      url = "";
      synopsis = "Machine Learning Toolbox";
      description = "Haskell Machine Learning Toolkit\nincludes various methods of supervised learning:\nlinear regression, logistic regression, SVN, neural networks, etc.\nas well as some methods of unsupervised methods: K-Means and PCA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or (errorHandler.buildDepError "hmatrix-gsl"))
          (hsPkgs."hmatrix-morpheus" or (errorHandler.buildDepError "hmatrix-morpheus"))
          (hsPkgs."ascii-progress" or (errorHandler.buildDepError "ascii-progress"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "mltool-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mltool" or (errorHandler.buildDepError "mltool"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."hmatrix-morpheus" or (errorHandler.buildDepError "hmatrix-morpheus"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }