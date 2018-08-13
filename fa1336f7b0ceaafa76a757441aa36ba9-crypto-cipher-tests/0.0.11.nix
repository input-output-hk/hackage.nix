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
        name = "crypto-cipher-tests";
        version = "0.0.11";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Generic cryptography cipher tests";
      description = "Generic cryptography cipher tests";
      buildType = "Simple";
    };
    components = {
      "crypto-cipher-tests" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.securemem)
          (hsPkgs.crypto-cipher-types)
        ];
      };
      tests = {
        "test-crypto-cipher-dummy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.byteable)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-tests)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }