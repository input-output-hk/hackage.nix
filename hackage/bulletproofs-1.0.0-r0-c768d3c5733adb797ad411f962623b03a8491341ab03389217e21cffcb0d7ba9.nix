{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bulletproofs"; version = "1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/bulletproofs#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/adjoint-io/bulletproofs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.QuickCheck)
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.galois-field)
          (hsPkgs.memory)
          (hsPkgs.pairing)
          (hsPkgs.protolude)
          (hsPkgs.random-shuffle)
          (hsPkgs.text)
          ];
        };
      tests = {
        "bulletproofs-test" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.bulletproofs)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.galois-field)
            (hsPkgs.memory)
            (hsPkgs.pairing)
            (hsPkgs.protolude)
            (hsPkgs.random-shuffle)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "rangeproof-benchmarks" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.bulletproofs)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.cryptonite)
            (hsPkgs.galois-field)
            (hsPkgs.memory)
            (hsPkgs.pairing)
            (hsPkgs.protolude)
            (hsPkgs.random-shuffle)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      };
    }