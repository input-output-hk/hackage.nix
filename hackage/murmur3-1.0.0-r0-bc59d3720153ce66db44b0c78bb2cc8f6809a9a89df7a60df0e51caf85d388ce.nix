{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "murmur3"; version = "1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade";
      homepage = "http://github.com/plaprade/murmur3";
      url = "";
      synopsis = "Pure Haskell implementation of the MurmurHash3 x86_32 algorithm.";
      description = "MurmurHash3 is a non-cryptogrpahic hash function suitable for general\nhash-based lookup. We provide the x86_32 version which closely follows\nthe following implementation:\n<https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.binary) ];
        };
      tests = {
        "test-murmur3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.murmur3)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }