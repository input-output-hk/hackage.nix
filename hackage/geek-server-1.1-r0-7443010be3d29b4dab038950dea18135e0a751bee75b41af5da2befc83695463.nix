{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "geek-server"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/geek";
      url = "";
      synopsis = "Geek blog engine server";
      description = "A dynamic blog engine, customizable with standard web technology, i.e. HTML, CSS and Javascript (JSON)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."air" or ((hsPkgs.pkgs-errors).buildDepError "air"))
          (hsPkgs."hack2-handler-snap-server" or ((hsPkgs.pkgs-errors).buildDepError "hack2-handler-snap-server"))
          (hsPkgs."geek" or ((hsPkgs.pkgs-errors).buildDepError "geek"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."hack2" or ((hsPkgs.pkgs-errors).buildDepError "hack2"))
          ];
        buildable = true;
        };
      exes = {
        "geek" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."air" or ((hsPkgs.pkgs-errors).buildDepError "air"))
            (hsPkgs."hack2-handler-snap-server" or ((hsPkgs.pkgs-errors).buildDepError "hack2-handler-snap-server"))
            (hsPkgs."geek" or ((hsPkgs.pkgs-errors).buildDepError "geek"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."hack2" or ((hsPkgs.pkgs-errors).buildDepError "hack2"))
            ];
          buildable = true;
          };
        };
      };
    }