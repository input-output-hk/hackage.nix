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
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
          (hsPkgs.monad-primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.erf)
          (hsPkgs.gamma)
          (hsPkgs.hmatrix)
          (hsPkgs.mtl)
          (hsPkgs.MonadRandom)
          (hsPkgs.bytestring)
          (hsPkgs.bloomfilter)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.array)
          (hsPkgs.hyperloglog)
          (hsPkgs.semigroups)
          (hsPkgs.bytes)
          (hsPkgs.approximate)
          (hsPkgs.lens)
          ];
        };
      tests = {
        "TestSuite-Unoptimized" = {
          depends = [
            (hsPkgs.subhask)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            ];
          };
        "Example0001" = { depends = [ (hsPkgs.subhask) (hsPkgs.base) ]; };
        "Example0002" = { depends = [ (hsPkgs.subhask) (hsPkgs.base) ]; };
        "Example0003" = { depends = [ (hsPkgs.subhask) (hsPkgs.base) ]; };
        };
      benchmarks = {
        "Vector" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.subhask)
            (hsPkgs.criterion)
            (hsPkgs.MonadRandom)
            ];
          };
        };
      };
    }