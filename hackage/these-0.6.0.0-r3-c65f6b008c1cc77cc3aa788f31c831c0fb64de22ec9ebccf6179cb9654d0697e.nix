{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "these";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cam@uptoisomorphism.net";
      author = "C. McCann";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "An either-or-both data type, with corresponding hybrid error/writer monad transformer.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "these" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.bifunctors)
          (hsPkgs.semigroupoids)
          (hsPkgs.profunctors)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.5") (hsPkgs.ghc-prim);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.bifunctors)
            (hsPkgs.these)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }