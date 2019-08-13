{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "elliptic-curve"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/elliptic-curve#readme";
      url = "";
      synopsis = "Elliptic curve library";
      description = "An extensible library of elliptic curves used in cryptography research";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.base)
          (hsPkgs.galois-field)
          (hsPkgs.protolude)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.text)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "elliptic-curve-tests" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.galois-field)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      benchmarks = {
        "elliptic-curve-benchmarks" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.galois-field)
            (hsPkgs.protolude)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      };
    }