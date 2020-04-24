{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chr-lang"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/chr";
      url = "";
      synopsis = "AST + surface language around chr";
      description = "AST + surface language around chr, with executable for parsing and running the evaluator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."chr-parse" or ((hsPkgs.pkgs-errors).buildDepError "chr-parse"))
          (hsPkgs."chr-pretty" or ((hsPkgs.pkgs-errors).buildDepError "chr-pretty"))
          (hsPkgs."chr-data" or ((hsPkgs.pkgs-errors).buildDepError "chr-data"))
          (hsPkgs."chr-core" or ((hsPkgs.pkgs-errors).buildDepError "chr-core"))
          ];
        buildable = true;
        };
      exes = {
        "chr-term" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chr-data" or ((hsPkgs.pkgs-errors).buildDepError "chr-data"))
            (hsPkgs."chr-lang" or ((hsPkgs.pkgs-errors).buildDepError "chr-lang"))
            ];
          buildable = true;
          };
        };
      };
    }