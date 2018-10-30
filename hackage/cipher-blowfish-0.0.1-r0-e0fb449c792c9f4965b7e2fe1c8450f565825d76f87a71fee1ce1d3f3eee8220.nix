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
        name = "cipher-blowfish";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Blowfish cipher";
      description = "Blowfish cipher primitives";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.vector)
          (hsPkgs.securemem)
        ];
      };
      tests = {
        "test-cipher-blowfish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cipher-blowfish)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-tests)
            (hsPkgs.bytestring)
            (hsPkgs.byteable)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "bench-cipher-blowfish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cipher-blowfish)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-benchmarks)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }