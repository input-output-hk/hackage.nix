{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pqueue"; version = "1.3.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>\nLouis Wasserman <wasserman.louis@gmail.com>";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Reliable, persistent, fast priority queues.";
      description = "A fast, reliable priority queue implementation based on a binomial heap.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.deepseq) ]; };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.deepseq) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }