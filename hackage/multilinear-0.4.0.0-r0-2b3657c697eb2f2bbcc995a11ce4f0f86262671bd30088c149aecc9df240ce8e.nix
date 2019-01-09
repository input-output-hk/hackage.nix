{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multilinear"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear#readme";
      url = "";
      synopsis = "Comprehensive and efficient (multi)linear algebra implementation.";
      description = "Comprehensive and efficient (multi)linear algebra implementation, based on generic tensor formalism and concise Ricci-Curbastro index syntax. More information available on GitHub: <https://github.com/ArturB/multilinear#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "multicore" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.generic-random)
            (hsPkgs.multilinear)
            (hsPkgs.quickcheck-instances)
            ];
          };
        "sequential" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.generic-random)
            (hsPkgs.multilinear)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      benchmarks = {
        "multicore-memory" = {
          depends = [ (hsPkgs.base) (hsPkgs.multilinear) (hsPkgs.weigh) ];
          };
        "multicore-profile" = {
          depends = [ (hsPkgs.base) (hsPkgs.deepseq) (hsPkgs.multilinear) ];
          };
        "multicore-time" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.multilinear) ];
          };
        "sequential-memory" = {
          depends = [ (hsPkgs.base) (hsPkgs.multilinear) (hsPkgs.weigh) ];
          };
        "sequential-profile" = {
          depends = [ (hsPkgs.base) (hsPkgs.deepseq) (hsPkgs.multilinear) ];
          };
        "sequential-time" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.multilinear) ];
          };
        };
      };
    }