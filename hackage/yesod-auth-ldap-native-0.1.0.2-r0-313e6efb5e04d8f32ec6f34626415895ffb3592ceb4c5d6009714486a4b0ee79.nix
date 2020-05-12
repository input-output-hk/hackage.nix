{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-ldap-native"; version = "0.1.0.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."ldap-client" or (errorHandler.buildDepError "ldap-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ];
        buildable = true;
        };
      tests = {
        "yesod-auth-ldap-native-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-auth-ldap-native" or (errorHandler.buildDepError "yesod-auth-ldap-native"))
            ];
          buildable = true;
          };
        };
      };
    }