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
        name = "data-hash";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Combinators for building fast hashing functions.";
      description = "Combinators for building fast hashing functions. Includes\nhashing functions for all basic Haskell98 types.";
      buildType = "Simple";
    };
    components = {
      "data-hash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.data-hash)
          ];
        };
      };
    };
  }