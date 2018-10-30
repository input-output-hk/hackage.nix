{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cipher-camellia";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Camellia block cipher primitives";
      description = "Camellia block cipher primitives";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.byteable)
          (hsPkgs.securemem)
          (hsPkgs.crypto-cipher-types)
        ];
      };
      tests = {
        "test-cipher-camellia" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.byteable)
            (hsPkgs.cipher-camellia)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-tests)
          ];
        };
      };
      benchmarks = {
        "bench-cipher-camellia" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.cipher-camellia)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-benchmarks)
          ];
        };
      };
    };
  }