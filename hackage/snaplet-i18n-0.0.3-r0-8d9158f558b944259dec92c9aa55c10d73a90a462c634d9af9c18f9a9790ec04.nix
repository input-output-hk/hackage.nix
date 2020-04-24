{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snaplet-i18n"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng,Wu";
      homepage = "https://github.com/HaskellCNOrg/snaplet-i18n";
      url = "";
      synopsis = "snaplet-i18n";
      description = "A light weight i18n snaplet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
          (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-lens-template" or ((hsPkgs.pkgs-errors).buildDepError "data-lens-template"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }