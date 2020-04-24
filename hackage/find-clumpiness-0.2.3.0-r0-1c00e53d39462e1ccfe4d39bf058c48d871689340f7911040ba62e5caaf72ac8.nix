{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "find-clumpiness"; version = "0.2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright 2017 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/find-clumpiness#readme";
      url = "";
      synopsis = "Find the clumpiness of labels in a tree";
      description = "Use a clumpiness measure to find the aggregation relationship between labels inside of a tree.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."BiobaseNewick" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseNewick"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clumpiness" or ((hsPkgs.pkgs-errors).buildDepError "clumpiness"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
          (hsPkgs."listsafe" or ((hsPkgs.pkgs-errors).buildDepError "listsafe"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          (hsPkgs."tree-fun" or ((hsPkgs.pkgs-errors).buildDepError "tree-fun"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "find-clumpiness" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."find-clumpiness" or ((hsPkgs.pkgs-errors).buildDepError "find-clumpiness"))
            (hsPkgs."BiobaseNewick" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseNewick"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clumpiness" or ((hsPkgs.pkgs-errors).buildDepError "clumpiness"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tree-fun" or ((hsPkgs.pkgs-errors).buildDepError "tree-fun"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }