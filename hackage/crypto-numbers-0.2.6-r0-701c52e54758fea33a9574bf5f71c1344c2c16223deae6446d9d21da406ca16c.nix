{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { integer-gmp = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "crypto-numbers"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-numbers";
      url = "";
      synopsis = "Cryptographic numbers: functions and algorithms";
      description = "Cryptographic numbers: functions and algorithms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.crypto-random)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && true && flags.integer-gmp) [
          (hsPkgs.integer-gmp)
          (hsPkgs.ghc-prim)
          ];
        };
      tests = {
        "test-crypto-numbers" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.crypto-random)
            (hsPkgs.crypto-numbers)
            (hsPkgs.bytestring)
            (hsPkgs.byteable)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      benchmarks = {
        "bench-crypto-numbers" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-numbers)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }