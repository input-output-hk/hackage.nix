{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test-suite = false;
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "monad-memo";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eduard.Sergeev@gmail.com";
      author = "Eduard Sergeev";
      homepage = "http://code.google.com/p/monad-memo";
      url = "";
      synopsis = "Memoization monad transformer";
      description = "Memoization monad transformer supporting mutual recursive function definitions\nand most of the standard monad transformers";
      buildType = "Simple";
    };
    components = {
      "monad-memo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }