{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimized = false; static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "galois-field"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/galois-field#readme";
      url = "";
      synopsis = "Galois field";
      description = "Finite field library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.integer-gmp) (hsPkgs.protolude) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.integer-gmp)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.integer-gmp)
            (hsPkgs.protolude)
            ];
          };
        };
      };
    }