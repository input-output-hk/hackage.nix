{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "blaze-html-hexpat"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <jaspervdj@gmail.com>";
      author = "Jasper Van der Jeugt, Doug Beardsley";
      homepage = "https://github.com/jaspervdj/blaze-html-hexpat";
      url = "";
      synopsis = "A hexpat backend for blaze-html.";
      description = "Allows you to generate hexpat node trees using blaze\nsyntax.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."hexpat" or ((hsPkgs.pkgs-errors).buildDepError "hexpat"))
          ];
        buildable = true;
        };
      };
    }