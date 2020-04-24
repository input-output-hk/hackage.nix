{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "graphviz"; version = "2999.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Graphviz bindings for Haskell.";
      description = "This library provides bindings for the Dot language\nused by the Graphviz (<http://graphviz.org/>)\nsuite of programs.  Also provided are\nconvenience functions to convert FGL graphs into\nDot code with a large degree of customisation\nfor layout, etc.\nAlso allows a limited amount of parsing of Dot,\nand round-trip usage of Graphviz to attach\npositional data to each node and edge in the\ngraph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          ] ++ (pkgs.lib).optional (flags.test) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
        buildable = true;
        };
      exes = {
        "graphviz-testsuite" = {
          buildable = if flags.test then true else false;
          };
        };
      };
    }