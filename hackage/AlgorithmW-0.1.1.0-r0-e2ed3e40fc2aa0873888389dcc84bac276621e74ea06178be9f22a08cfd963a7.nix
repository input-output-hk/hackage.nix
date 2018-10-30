{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "AlgorithmW";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin@grabmueller.de";
      author = "Martin Grabmueller";
      homepage = "https://github.com/mgrabmueller/AlgorithmW";
      url = "";
      synopsis = "Example implementation of Algorithm W for Hindley-Milner\ntype inference.";
      description = "Complete implementation of the classic\nalgorithm W for Hindley-Milner polymorphic\ntype inference in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "AlgorithmW" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }