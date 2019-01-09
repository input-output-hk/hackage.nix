{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "afis"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-afis";
      url = "";
      synopsis = "Anti-forensic Information Splitter";
      description = "Anti-forensic Information Splitter as defined for LUKS";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.crypto-random-api)
          (hsPkgs.packer)
          (hsPkgs.byteable)
          ];
        };
      tests = {
        "test-afis" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.afis)
            (hsPkgs.crypto-random-api)
            (hsPkgs.cryptohash)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }