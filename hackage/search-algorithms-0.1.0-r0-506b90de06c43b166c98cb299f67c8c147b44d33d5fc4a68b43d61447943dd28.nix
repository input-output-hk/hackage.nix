{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "search-algorithms"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Devon Hollowood";
      maintainer = "devonhollowood@gmail.com";
      author = "Devon Hollowood";
      homepage = "https://github.com/devonhollowood/search-algorithms#readme";
      url = "";
      synopsis = "Common graph search algorithms";
      description = "Library containing common graph search algorithms,\nincluding depth-first and breadth-first searches,\nDijkstra's algorithm, and A*";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "search-algorithms-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."search-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "search-algorithms"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doc-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."search-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "search-algorithms"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }