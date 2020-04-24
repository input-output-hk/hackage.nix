{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-reflex"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Daniel Bergey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "reflex backend for diagrams drawing EDSL.";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to dynamic inline SVGs.\nIt uses @reflex-dom@ and the @reflex@ FRP system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."monoid-extras" or ((hsPkgs.pkgs-errors).buildDepError "monoid-extras"))
          (hsPkgs."reflex-dom" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."reflex-dom-contrib" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom-contrib"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }