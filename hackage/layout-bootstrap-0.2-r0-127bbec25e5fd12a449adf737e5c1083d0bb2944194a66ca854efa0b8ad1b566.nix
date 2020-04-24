{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "layout-bootstrap"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "dp_wiz <aenor.realm@gmail.com>";
      author = "dp_wiz";
      homepage = "https://bitbucket.org/dpwiz/layout-bootstrap";
      url = "";
      synopsis = "Template and widgets Bootstrap2 to use with Text.Blaze.Html5";
      description = "Template and widgets Bootstrap2 to use with Text.Blaze.Html5\nIt provides some shortcuts to hide classes and structure\nrequired for correct styling of elements and focus on a structure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }