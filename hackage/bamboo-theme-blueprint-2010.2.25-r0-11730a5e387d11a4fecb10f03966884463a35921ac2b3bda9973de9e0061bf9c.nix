{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bamboo-theme-blueprint"; version = "2010.2.25"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing <nfjinjing@gmail.com>\n, Григорий Холомьёв <omever@gmail.com>";
      homepage = "http://github.com/nfjinjing/bamboo-theme-blueprint";
      url = "";
      synopsis = "bamboo blueprint theme";
      description = "bamboo blueprint theme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."rss" or ((hsPkgs.pkgs-errors).buildDepError "rss"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."gravatar" or ((hsPkgs.pkgs-errors).buildDepError "gravatar"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."mps" or ((hsPkgs.pkgs-errors).buildDepError "mps"))
          (hsPkgs."hcheat" or ((hsPkgs.pkgs-errors).buildDepError "hcheat"))
          (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
          (hsPkgs."hack-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack-contrib"))
          (hsPkgs."bamboo" or ((hsPkgs.pkgs-errors).buildDepError "bamboo"))
          ];
        buildable = true;
        };
      };
    }