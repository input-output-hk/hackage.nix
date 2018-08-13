{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cipher-rc4";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cipher-rc4";
      url = "";
      synopsis = "Fast RC4 cipher implementation";
      description = "Fast RC4 cipher implementation";
      buildType = "Simple";
    };
    components = {
      "cipher-rc4" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.crypto-cipher-types)
        ];
      };
      tests = {
        "test-cipher-rc4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cipher-rc4)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-tests)
          ];
        };
      };
      benchmarks = {
        "bench-cipher-rc4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cipher-rc4)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-benchmarks)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }