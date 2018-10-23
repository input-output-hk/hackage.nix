{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sfmt";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/sfmt-hs";
      url = "";
      synopsis = "SIMD-oriented Fast Mersenne Twister(SFMT) binding.";
      description = "this library has mwc-random<http://hackage.haskell.org/package/mwc-random> like api.";
      buildType = "Simple";
    };
    components = {
      "sfmt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.bytestring)
          (hsPkgs.entropy)
        ];
      };
    };
  }