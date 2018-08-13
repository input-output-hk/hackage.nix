{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      benchmark = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cipher-aes";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cipher-aes";
      url = "";
      synopsis = "Fast AES cipher implementation with advanced mode of operations";
      description = "Fast AES cipher implementation with advanced mode of operations";
      buildType = "Simple";
    };
    components = {
      "cipher-aes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
        ];
      };
      exes = {
        "Benchmarks" = {
          depends  = pkgs.lib.optionals (_flags.benchmark) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-api)
            (hsPkgs.cipher-aes)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "test-cipher-aes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.crypto-api)
            (hsPkgs.cipher-aes)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }