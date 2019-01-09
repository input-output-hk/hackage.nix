{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optimal-blocks"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "Jay Groven";
      homepage = "https://github.com/tsuraan/optimal-blocks";
      url = "";
      synopsis = "Optimal Block boundary determination for rsync-like behaviours";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "chunk" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.hex)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.deepseq)
            (hsPkgs.optimal-blocks)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.optimal-blocks)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }