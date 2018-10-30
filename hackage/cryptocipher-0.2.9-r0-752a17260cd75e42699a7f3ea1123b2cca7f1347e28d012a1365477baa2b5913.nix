{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test = false;
      benchmark = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cryptocipher";
        version = "0.2.9";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cryptocipher";
      url = "";
      synopsis = "Symmetrical Block, Stream and PubKey Ciphers";
      description = "Symmetrical Block, Stream and PubKey Ciphers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
        ];
      };
      exes = {
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.QuickCheck)
          ];
        };
        "Benchmarks" = {
          depends  = pkgs.lib.optionals (flags.benchmark) [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }