{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "tree-render-text"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Eding";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/tree-render-text";
      url = "";
      synopsis = "Configurable text rendering of trees.";
      description = "Configurable text rendering of trees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
          ];
        buildable = true;
        };
      };
    }