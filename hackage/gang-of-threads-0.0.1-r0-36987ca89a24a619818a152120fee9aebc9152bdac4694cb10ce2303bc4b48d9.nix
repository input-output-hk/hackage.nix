{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gang-of-threads"; version = "0.0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }