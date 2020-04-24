{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "IntGraph"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Sam Barr";
      maintainer = "sbarr@oberlin.edu";
      author = "Sam Barr";
      homepage = "https://github.com/sam-barr/IntGraph#readme";
      url = "";
      synopsis = "Dynamically sized graph library";
      description = "Graph implemented as an IntMap to Sets of Ints. Functions for Directed and Undirected graphs are provided.";
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
        "IntGraph-test" = {
          depends = [
            (hsPkgs."IntGraph" or ((hsPkgs.pkgs-errors).buildDepError "IntGraph"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }