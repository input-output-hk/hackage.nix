{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { benchmark = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "network-address"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sebnow@gmail.com";
      author = "Sebastian Nowicki";
      homepage = "http://github.com/sebnow/haskell-network-address";
      url = "";
      synopsis = "IP data structures and textual representation";
      description = "A library for parsing, representing, computing and\ntransforming network addresses such a IPv4, IPv6\nand subnetworks.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.Cabal) ]; };
      exes = {
        "benchmark" = {
          depends = [ (hsPkgs.base) (hsPkgs.Cabal) (hsPkgs.criterion) ];
          };
        };
      tests = {
        "test-package" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }