{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tuple-gen";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Enum instances for tuples where the digits increase with the same speed";
      description = "Generating tuples like this: [(x, y) | x <- [1..], y <- [1..]] generates tuples that change only in the second position.\n\nThis library uses increasingly bigger hyperplanes to generate tuples.\n\nIt uses the Enum instances that are also used in the Prelude.\n\nThereby tuples with arbitrary starting values and types can be enumerated.\n\nExample:  ( enumFrom (0,(1,2),3) ) :: [(Word8,(Word8,Word8),Word8)]\n\nevaluates to [(0,(1,2),3), (0,(2,1),4), (0,(3,0),5), ...].\n\nFurther explanations are planned to appear in the Monad Reader issue 20.";
      buildType = "Simple";
    };
    components = {
      "tuple-gen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.combinat)
        ];
      };
    };
  }