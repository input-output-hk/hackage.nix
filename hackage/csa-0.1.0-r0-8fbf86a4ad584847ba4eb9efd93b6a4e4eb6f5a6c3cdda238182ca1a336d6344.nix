{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "csa"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jens Egholm Pedersen";
      author = "Jens Egholm Pedersen";
      homepage = "https://github.com/volr/csa#readme";
      url = "";
      synopsis = "Connection-set algebra (CSA) library";
      description = "Library for algebraic connection-set expressions, built on M. Djurfeldt's idea of connection-set algebra [1].\n\n1: Mikael Djurfeldt. The Connection-set Algebra: a formalism for the representation of connectivity structure in neuronal network models, implementations in Python and C++, and their use in simulators, BMC Neuroscience, 2011. https://doi.org/10.1186/1471-2202-12-S1-P80";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.hmatrix) ]; };
      tests = {
        "csa-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.csa)
            (hsPkgs.hedgehog)
            (hsPkgs.hmatrix)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }