{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "subwordgraph"; version = "1.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test-subwordgraph" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."subwordgraph" or ((hsPkgs.pkgs-errors).buildDepError "subwordgraph"))
            ];
          buildable = true;
          };
        };
      };
    }