{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "numerical"; version = "0.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com\ncopyright:     Carter Schonwald";
      author = "Carter Tazio Schonwald";
      homepage = "";
      url = "";
      synopsis = "core package for Numerical Haskell project";
      description = "the core package for Numerical Haskell. Still immature and incomplete";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.tagged)
          (hsPkgs.monad-ste)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector-algorithms)
          ];
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.HUnit)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.tagged)
            (hsPkgs.transformers)
            (hsPkgs.ghc-prim)
            (hsPkgs.numerical)
            ];
          };
        };
      };
    }