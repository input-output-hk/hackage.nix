{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "intmap-graph"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Tillmann Vogt";
      maintainer = "tillk.vogt@gmail.com";
      author = "Tillmann Vogt";
      homepage = "https://github.com/tkvogt/intmap-graph#readme";
      url = "";
      synopsis = "A graph library that allows to explore edges after their type";
      description = "It is easiest to explain this library with an example: A node has 300 outgoing edges, 100 red, 100 green, 100 blue. If you want to explore all green edges, most of the other graph libraries force you to look up all 300 edges and then filter after the property green. This means 300 O(log n) calls. With this library there is only one (log n) call necessary that gives a list of all green edges.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ];
        buildable = true;
        };
      };
    }