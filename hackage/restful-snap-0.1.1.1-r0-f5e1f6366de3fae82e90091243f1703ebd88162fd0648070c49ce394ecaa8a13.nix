{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "restful-snap"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc";
      maintainer = "ozataman@gmail.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/ozataman/restful-snap";
      url = "";
      synopsis = "";
      description = "A convention-based RESTful routing mechanism for snap";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."digestive-functors" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors"))
          (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."readable" or ((hsPkgs.pkgs-errors).buildDepError "readable"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."snap-extras" or ((hsPkgs.pkgs-errors).buildDepError "snap-extras"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          ];
        buildable = true;
        };
      };
    }