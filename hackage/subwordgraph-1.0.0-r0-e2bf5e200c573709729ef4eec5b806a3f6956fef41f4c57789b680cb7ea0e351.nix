{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "subwordgraph";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adambak1992@gmail.com";
      author = "Adam Bąk, Daniel Nowakowski";
      homepage = "https://github.com/danielnowakowski/Subword-Graph";
      url = "";
      synopsis = "Subword graph implementation";
      description = "An implementation of a classic Subword Graph (aka DAWG) data structure for solving string related problems on a single word.";
      buildType = "Simple";
    };
    components = {
      "subwordgraph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test-subwordgraph" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.subwordgraph)
          ];
        };
      };
    };
  }