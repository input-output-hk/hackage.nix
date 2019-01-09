{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gang-of-threads"; version = "3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bastian Holst <bho@informatik.uni-kiel.de>";
      author = "Bastian Holst <bho@informatik.uni-kiel.de>";
      homepage = "";
      url = "";
      synopsis = "Non-deterministic parallelism with bags";
      description = "Package implementing a bag-of-tasks approach to parallelism. This is an\napproach to non-deterministic parallelism, where non-deterministic means\nthat the order of multiple values from the same set depends on the scheduling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          ];
        };
      };
    }