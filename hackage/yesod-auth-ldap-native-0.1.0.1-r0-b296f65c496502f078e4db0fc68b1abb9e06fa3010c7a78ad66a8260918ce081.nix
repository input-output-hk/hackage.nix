{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-ldap-native"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Maciej Kazulak";
      maintainer = "kazulakm@gmail.com";
      author = "Maciej Kazulak";
      homepage = "http://github.com/mulderr/yesod-auth-ldap-native";
      url = "";
      synopsis = "Yesod LDAP authentication plugin";
      description = "This package provides an LDAP authentication plugin for Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ldap-client" or ((hsPkgs.pkgs-errors).buildDepError "ldap-client"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          ];
        buildable = true;
        };
      tests = {
        "yesod-auth-ldap-native-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod-auth-ldap-native" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth-ldap-native"))
            ];
          buildable = true;
          };
        };
      };
    }