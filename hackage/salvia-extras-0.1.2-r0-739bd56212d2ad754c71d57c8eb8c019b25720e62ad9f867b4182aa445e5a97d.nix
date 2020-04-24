{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "salvia-extras"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Collection of non-fundamental request handler for the Salvia web server.";
      description = "Collection of non-fundamental request handler for the Salvia web server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."clevercss" or ((hsPkgs.pkgs-errors).buildDepError "clevercss"))
          (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
          (hsPkgs."salvia" or ((hsPkgs.pkgs-errors).buildDepError "salvia"))
          ];
        buildable = true;
        };
      };
    }