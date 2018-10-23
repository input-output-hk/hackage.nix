{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "siphash";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-siphash";
      url = "";
      synopsis = "siphash: a fast short input PRF";
      description = "Haskell implementation of siphash. [http://131002.net/siphash/siphash.pdf]";
      buildType = "Simple";
    };
    components = {
      "siphash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
        ];
      };
      tests = {
        "test-siphash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.siphash)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }