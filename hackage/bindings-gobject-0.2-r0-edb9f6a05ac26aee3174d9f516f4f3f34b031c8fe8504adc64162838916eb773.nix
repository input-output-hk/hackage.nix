{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bindings-gobject"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-gobject";
      url = "";
      synopsis = "Low level bindings to GObject.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."bindings-glib" or ((hsPkgs.pkgs-errors).buildDepError "bindings-glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gobject-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gobject-2.0"))
          ];
        buildable = true;
        };
      };
    }