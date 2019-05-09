{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "min-max-pqueue"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ziyang Liu";
      maintainer = "Ziyang Liu <free@cofree.io>";
      author = "Ziyang Liu <free@cofree.io>";
      homepage = "https://github.com/zliu41/min-max-pqueue#readme";
      url = "";
      synopsis = "Double-ended priority queues.";
      description = "Min-max priority queues, also known as double-ended priority queues.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hedgehog)
            (hsPkgs.min-max-pqueue)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.integer-logarithms)
            (hsPkgs.min-max-pqueue)
            (hsPkgs.random)
            ];
          };
        };
      };
    }