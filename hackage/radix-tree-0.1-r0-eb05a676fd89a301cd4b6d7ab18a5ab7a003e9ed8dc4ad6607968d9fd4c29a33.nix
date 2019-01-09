{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "radix-tree"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Sergey Vinokurov";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/radix-tree";
      url = "";
      synopsis = "Radix tree data structive over short byte-strings";
      description = "This module provides a memory-efficient map from\nData.ByteString.Short keys to arbitrary values implemented as a radix\ntree datastructure. Memory efficiency is achieved by sharing common\nprefixes of all keys.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
          ];
        };
      tests = {
        "radix-tree-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.radix-tree)
            ];
          };
        };
      benchmarks = {
        "radix-tree-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.hashtables)
            (hsPkgs.radix-tree)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }