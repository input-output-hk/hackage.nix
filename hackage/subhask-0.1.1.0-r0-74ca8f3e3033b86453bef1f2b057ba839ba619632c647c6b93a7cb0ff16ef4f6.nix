{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "subhask"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "http://github.com/mikeizbicki/subhask";
      url = "";
      synopsis = "Type safe interface for programming in subcategories of Hask";
      description = "SubHask is a radical rewrite of the Haskell <https://www.haskell.org/onlinereport/standard-prelude.htm Prelude>.\nThe goal is to make numerical computing in Haskell fun and fast.\nThe main idea is to use a type safe interface for programming in arbitrary subcategories of <https://wiki.haskell.org/Hask Hask>.\nFor example, the category <http://ncatlab.org/nlab/show/Vect Vect> of linear functions is a subcategory of Hask, and SubHask exploits this fact to give a nice interface for linear algebra.\nTo achieve this goal, almost every class hierarchy is redefined to be more general.\nI recommend reading the <http://github.com/mikeizbicki/subhask/blob/master/README.md README> file and the <http://github.com/mikeizbicki/subhask/blob/master/examples examples> before looking at the documetation here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."monad-primitive" or ((hsPkgs.pkgs-errors).buildDepError "monad-primitive"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
          (hsPkgs."gamma" or ((hsPkgs.pkgs-errors).buildDepError "gamma"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bloomfilter" or ((hsPkgs.pkgs-errors).buildDepError "bloomfilter"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."hyperloglog" or ((hsPkgs.pkgs-errors).buildDepError "hyperloglog"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
          (hsPkgs."approximate" or ((hsPkgs.pkgs-errors).buildDepError "approximate"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "TestSuite-Unoptimized" = {
          depends = [
            (hsPkgs."subhask" or ((hsPkgs.pkgs-errors).buildDepError "subhask"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "Example0001" = {
          depends = [
            (hsPkgs."subhask" or ((hsPkgs.pkgs-errors).buildDepError "subhask"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "Example0002" = {
          depends = [
            (hsPkgs."subhask" or ((hsPkgs.pkgs-errors).buildDepError "subhask"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "Example0003" = {
          depends = [
            (hsPkgs."subhask" or ((hsPkgs.pkgs-errors).buildDepError "subhask"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Vector" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."subhask" or ((hsPkgs.pkgs-errors).buildDepError "subhask"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }