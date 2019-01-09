{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "ForestStructures"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015-2018";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen 2015-2018, Sarah Berkemer, 2015-2017";
      homepage = "https://github.com/choener/ForestStructures";
      url = "";
      synopsis = "Tree- and forest structures";
      description = "This library provides both static and dynamic tree and forest\nstructures. Once a tree structure is static, it can be mappend\nonto a linearized representation, which is beneficial for\nalgorithms that do not modify the internal tree structure, but\nneed fast @O(1)@ access to individual nodes, children, and\nsiblings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.lens)
          (hsPkgs.QuickCheck)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.vector)
            (hsPkgs.ForestStructures)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ForestStructures)
            ];
          };
        };
      };
    }