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
      identifier = { name = "subhask"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "http://github.com/mikeizbicki/subhask";
      url = "";
      synopsis = "Type safe interface for programming in subcategories of Hask";
      description = "SubHask is a radical rewrite of the Haskell [Prelude](https://www.haskell.org/onlinereport/standard-prelude.html).\nThe goal is to make numerical computing in Haskell *fun* and *fast*.\nThe main idea is to use a type safe interface for programming in arbitrary subcategories of [Hask](https://wiki.haskell.org/Hask).\nFor example, the category [Vect](http://ncatlab.org/nlab/show/Vect) of linear functions is a subcategory of Hask, and SubHask exploits this fact to give a nice interface for linear algebra.\nTo achieve this goal, almost every class hierarchy is redefined to be more general.\nI recommend reading the <http://github.com/mikeizbicki/subhask/blob/master/README.md README> file and the <http://github.com/mikeizbicki/subhask/blob/master/examples> before looking at the documetation here.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."monad-primitive" or (errorHandler.buildDepError "monad-primitive"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
          (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bloomfilter" or (errorHandler.buildDepError "bloomfilter"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hyperloglog" or (errorHandler.buildDepError "hyperloglog"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."approximate" or (errorHandler.buildDepError "approximate"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      tests = {
        "TestSuite-Unoptimized" = {
          depends = [
            (hsPkgs."subhask" or (errorHandler.buildDepError "subhask"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          ];
          buildable = true;
        };
        "Example0001" = {
          depends = [
            (hsPkgs."subhask" or (errorHandler.buildDepError "subhask"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "Example0002" = {
          depends = [
            (hsPkgs."subhask" or (errorHandler.buildDepError "subhask"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "Example0003" = {
          depends = [
            (hsPkgs."subhask" or (errorHandler.buildDepError "subhask"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "Vector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."subhask" or (errorHandler.buildDepError "subhask"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
          buildable = true;
        };
      };
    };
  }