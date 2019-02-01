{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "xorshift-plus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "osmium.k@gmail.com";
      author = "OSANAI Kazuyoshi";
      homepage = "https://github.com/syocy/xorshift-plus";
      url = "";
      synopsis = "Simple implementation of xorshift+ PRNG";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) ]; };
      tests = {
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "specs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xorshift-plus)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      benchmarks = {
        "micro" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xorshift-plus)
            (hsPkgs.gauge)
            (hsPkgs.xorshift)
            (hsPkgs.random)
            (hsPkgs.Xorshift128Plus)
            ];
          };
        };
      };
    }