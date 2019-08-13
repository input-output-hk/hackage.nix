{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "galois-field"; version = "0.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/galois-field#readme";
      url = "";
      synopsis = "Galois field library";
      description = "An efficient implementation of Galois fields used in cryptography research";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.poly)
          (hsPkgs.protolude)
          (hsPkgs.semirings)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.vector)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "galois-field-tests" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.base)
            (hsPkgs.integer-gmp)
            (hsPkgs.poly)
            (hsPkgs.protolude)
            (hsPkgs.semirings)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      benchmarks = {
        "galois-field-benchmarks" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.integer-gmp)
            (hsPkgs.poly)
            (hsPkgs.protolude)
            (hsPkgs.semirings)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      };
    }