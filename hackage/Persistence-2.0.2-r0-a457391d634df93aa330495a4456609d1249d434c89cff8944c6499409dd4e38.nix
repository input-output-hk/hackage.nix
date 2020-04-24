{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "Persistence"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Eben Kadile";
      maintainer = "eben.cowley42@gmail.com";
      author = "Eben Kadile";
      homepage = "https://github.com/Ebanflo42/Persistence";
      url = "";
      synopsis = "A versatile library for topological data analysis.";
      description = "A topological data analysis library motivated by flexibility when it comes to the type of data being analyzed. If your data comes with a meaningful binary function into an ordered set, you can use Persistence to analyze your data. The library also provides functions for analyzing directed\\/undirected, weighted\\/unweighted graphs. See the README for resources on learning about topological data anlysis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."maximal-cliques" or ((hsPkgs.pkgs-errors).buildDepError "maximal-cliques"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "persistence-test" = {
          depends = [
            (hsPkgs."Persistence" or ((hsPkgs.pkgs-errors).buildDepError "Persistence"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."maximal-cliques" or ((hsPkgs.pkgs-errors).buildDepError "maximal-cliques"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }