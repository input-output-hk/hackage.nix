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
        name = "nestedmap";
        version = "0.1.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "kirstin.rhys@gmail.com";
      author = "kirstin penelope rhys";
      homepage = "";
      url = "";
      synopsis = "A library for nested maps";
      description = "This library supports deeply nested key to value mapping.\nVery much like Data.Map, but for heigher, hierarchial dimensions.\nIt could be used for thing such as markov chains, sparse tensors\nor matricies which could contain non-numeric data, file systems, etc.";
      buildType = "Simple";
    };
    components = {
      "nestedmap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.base-unicode-symbols)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.data-ordlist)
          ];
        };
      };
    };
  }