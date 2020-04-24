{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "diagrams"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "http://code.haskell.org/diagrams";
      url = "";
      synopsis = "An EDSL for creating simple diagrams";
      description = "An embedded domain-specific language (EDSL) for\ncreating simple diagrams, built on top of the Cairo\nrendering engine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          ];
        buildable = true;
        };
      };
    }