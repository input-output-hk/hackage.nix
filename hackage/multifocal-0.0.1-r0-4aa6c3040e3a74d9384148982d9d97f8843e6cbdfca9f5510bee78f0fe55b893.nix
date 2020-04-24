{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "multifocal"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Hugo Pacheco <hpacheco@di.uminho.pt>, Alcino Cunha <alcino@di.uminho.pt>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional Two-level Transformation of XML Schemas";
      description = "Library that implements a two-level transformation (<http://dx.doi.org/10.1007/978-3-540-69611-7_19>) for creating bidirectional views of XML Schemas based on bidirectional lenses. It supports the specialization of generic queries as two-level transformation steps and the optimization of the generated lens data transformations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pointless-haskell" or ((hsPkgs.pkgs-errors).buildDepError "pointless-haskell"))
          (hsPkgs."pointless-lenses" or ((hsPkgs.pkgs-errors).buildDepError "pointless-lenses"))
          (hsPkgs."pointless-rewrite" or ((hsPkgs.pkgs-errors).buildDepError "pointless-rewrite"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."hxt-xpath" or ((hsPkgs.pkgs-errors).buildDepError "hxt-xpath"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          ];
        buildable = true;
        };
      exes = {
        "multifocal" = {
          depends = [
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pointless-haskell" or ((hsPkgs.pkgs-errors).buildDepError "pointless-haskell"))
            (hsPkgs."pointless-lenses" or ((hsPkgs.pkgs-errors).buildDepError "pointless-lenses"))
            (hsPkgs."pointless-rewrite" or ((hsPkgs.pkgs-errors).buildDepError "pointless-rewrite"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or ((hsPkgs.pkgs-errors).buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            ];
          buildable = true;
          };
        };
      };
    }