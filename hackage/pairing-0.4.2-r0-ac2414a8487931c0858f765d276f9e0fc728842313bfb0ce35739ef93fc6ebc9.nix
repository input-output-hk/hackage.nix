{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "pairing"; version = "0.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/pairing#readme";
      url = "";
      synopsis = "Bilinear pairings";
      description = "Optimal Ate pairing over Barreto-Naehrig curves";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.QuickCheck)
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.galois-field)
          (hsPkgs.integer-logarithms)
          (hsPkgs.memory)
          (hsPkgs.protolude)
          (hsPkgs.random)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "pairing-tests" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.errors)
            (hsPkgs.galois-field)
            (hsPkgs.hexstring)
            (hsPkgs.integer-logarithms)
            (hsPkgs.memory)
            (hsPkgs.protolude)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      benchmarks = {
        "pairing-benchmarks" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.errors)
            (hsPkgs.galois-field)
            (hsPkgs.integer-logarithms)
            (hsPkgs.memory)
            (hsPkgs.protolude)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      };
    }