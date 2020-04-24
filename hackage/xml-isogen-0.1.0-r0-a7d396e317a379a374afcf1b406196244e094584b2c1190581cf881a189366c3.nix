{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "xml-isogen"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "";
      url = "";
      synopsis = "Generate XML-isomorphic types";
      description = "TemplateHaskell generators for XML-isomorphic data types, including\ninstances for parsing and rendering. A convenient DSL to define those\ntypes.\nThis is similar to XSD but is Haskell-specific.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dom-parser" or ((hsPkgs.pkgs-errors).buildDepError "dom-parser"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."xml-conduit-writer" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit-writer"))
          ];
        buildable = true;
        };
      };
    }