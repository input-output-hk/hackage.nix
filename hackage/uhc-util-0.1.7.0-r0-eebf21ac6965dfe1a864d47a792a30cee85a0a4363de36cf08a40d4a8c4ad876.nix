{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "uhc-util"; version = "0.1.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Atze Dijkstra & Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc-util";
      url = "";
      synopsis = "UHC utilities";
      description = "General purpose utilities for UHC and related tools";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
          (hsPkgs."time-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-compat"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."logict-state" or ((hsPkgs.pkgs-errors).buildDepError "logict-state"))
          (hsPkgs."pqueue" or ((hsPkgs.pkgs-errors).buildDepError "pqueue"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."chr-pretty" or ((hsPkgs.pkgs-errors).buildDepError "chr-pretty"))
          (hsPkgs."chr-parse" or ((hsPkgs.pkgs-errors).buildDepError "chr-parse"))
          (hsPkgs."chr-data" or ((hsPkgs.pkgs-errors).buildDepError "chr-data"))
          (hsPkgs."chr-core" or ((hsPkgs.pkgs-errors).buildDepError "chr-core"))
          ];
        buildable = true;
        };
      };
    }