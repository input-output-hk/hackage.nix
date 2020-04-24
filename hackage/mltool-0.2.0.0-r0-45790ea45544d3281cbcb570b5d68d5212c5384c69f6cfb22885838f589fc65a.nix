{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mltool"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2018 Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/alexander-ignatyev/mltool";
      url = "";
      synopsis = "Machine Learning Toolbox";
      description = "Haskell Machine Learning Toolkit\nincludes various methods of supervised learning:\nlinear regression, logistic regression, SVN, neural networks, etc.\nas well as some methods of unsupervised methods: K-Means and PCA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-gsl"))
          (hsPkgs."hmatrix-morpheus" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-morpheus"))
          (hsPkgs."ascii-progress" or ((hsPkgs.pkgs-errors).buildDepError "ascii-progress"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "mltool-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mltool" or ((hsPkgs.pkgs-errors).buildDepError "mltool"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."hmatrix-morpheus" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-morpheus"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }