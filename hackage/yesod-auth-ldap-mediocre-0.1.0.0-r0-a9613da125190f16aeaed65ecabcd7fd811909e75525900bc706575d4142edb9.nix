{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-ldap-mediocre"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Very simlple LDAP auth for yesod";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."LDAP" or ((hsPkgs.pkgs-errors).buildDepError "LDAP"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }