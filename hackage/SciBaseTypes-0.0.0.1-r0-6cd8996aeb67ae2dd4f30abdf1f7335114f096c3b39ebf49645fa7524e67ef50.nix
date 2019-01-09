{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SciBaseTypes"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2018";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/SciBaseTypes";
      url = "";
      synopsis = "Base types and classes for statistics, sciences and humanities";
      description = "This library provides a set of basic types and classes for\nstatistics, sciences, and the humanities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.log-domain)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.SciBaseTypes)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            ];
          };
        };
      benchmarks = {
        "BenchmarkSciBaseTypes" = {
          depends = [ (hsPkgs.base) (hsPkgs.SciBaseTypes) ];
          };
        };
      };
    }