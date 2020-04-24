{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "derivation-trees"; version = "0.7.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Typeset Derivation Trees via MetaPost";
      description = "A library to typeset derivation trees via Laurent Mehats metapost package.\nAlso contains a module to ease the generation of trees for (coloured) pure type systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."applicative-extras" or ((hsPkgs.pkgs-errors).buildDepError "applicative-extras"))
          ];
        buildable = true;
        };
      };
    }