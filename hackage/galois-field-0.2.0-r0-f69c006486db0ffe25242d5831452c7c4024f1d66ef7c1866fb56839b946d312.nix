{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "galois-field"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/galois-field#readme";
      url = "";
      synopsis = "Galois field library";
      description = "Galois field library for cryptography research";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.protolude)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "galois-field-tests" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.base)
            (hsPkgs.integer-gmp)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-quickcheck)
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
            (hsPkgs.protolude)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      };
    }