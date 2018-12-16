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
      specVersion = "1.6";
      identifier = {
        name = "tuple-gen";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Generating all n-tuples without getting stuck in one infinity";
      description = "Generating tuples like this: [(x, y) | x <- [1..], y <- [1..]] generates tuples that change only in the second position. This library uses an automata to generate all tuples whose sum of digits is constant. This constant is increased and thereby all tuples are generated.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }