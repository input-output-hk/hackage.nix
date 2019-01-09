{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-hspec = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "ralist"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Carter Schonwald";
      author = "Lennart Augustsson, Carter Schonwald";
      homepage = "http://github.com/cartazio/ralist";
      url = "";
      synopsis = "Random access list with a list compatible interface.";
      description = "Random access list with a list compatible interface.\nRandom access list have same complexity as lists with some exceptions,\nthe notable one being that (!!) is O(log n) instead of O(n).\nRALists have to be finite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "hspec" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hspec)) [
            (hsPkgs.base)
            (hsPkgs.ralist)
            (hsPkgs.hspec)
            ];
          };
        };
      benchmarks = {
        "benchmarking" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ralist)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }