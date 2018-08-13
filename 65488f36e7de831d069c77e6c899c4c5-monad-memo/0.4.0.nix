{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "monad-memo";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eduard.sergeev@gmail.com";
      author = "Eduard Sergeev";
      homepage = "https://github.com/EduardSergeev/monad-memo";
      url = "";
      synopsis = "Memoization monad transformer";
      description = "Memoization monad transformer supporting most of the standard monad transformers and a range of memoization cache types: from default pure maps to extremely fast mutable vectors";
      buildType = "Simple";
    };
    components = {
      "monad-memo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.primitive)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
          ];
        };
      };
      benchmarks = {
        "all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.primitive)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }