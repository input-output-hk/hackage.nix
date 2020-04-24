{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graphviz"; version = "2009.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "GraphViz wrapper for Haskell.";
      description = "Provides convenient functions to convert FGL graphs into the Dot\nlanguage used by the GraphViz (http://graphviz.org/) programs with a\nlarge degree of customisation for layout, etc.\nAlso allows a limited amount of parsing of Dot, and usage of\nGraphViz to attach positional data to each node and edge in the\ngraph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
          ];
        buildable = true;
        };
      };
    }