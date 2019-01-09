{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cipher-rc4"; version = "0.1.1"; };
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
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      tests = {
        "test-cipher-rc4" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cipher-rc4)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      benchmarks = {
        "bench-cipher-rc4" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cipher-rc4)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }