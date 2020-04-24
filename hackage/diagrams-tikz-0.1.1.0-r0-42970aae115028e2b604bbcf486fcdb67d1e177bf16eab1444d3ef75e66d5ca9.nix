{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "diagrams-tikz"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Scott N. Walck";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "TikZ backend for diagrams drawing EDSL";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL using the\nTikZ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }