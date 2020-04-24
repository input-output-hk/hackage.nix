{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.1.0";
      identifier = { name = "Top"; version = "1.7"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2012";
      maintainer = "helium@cs.uu.nl";
      author = "Bastiaan Heeren, Jurriaan Hage";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Helium/WebHome";
      url = "";
      synopsis = "Constraint solving framework employed by the Helium Compiler.";
      description = "At its most general, Top is a framework for constructing abstract interpretations\nwhich focuses on giving good feedback on why an abstract interpretation does not give\nany useful information. In a mathematical notation this is usually made explicit by\nreturning the top element of a (complete) lattice. This is also one of the reasons\nfor the name of the project.";
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
      exes = {
        "topsolver" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }