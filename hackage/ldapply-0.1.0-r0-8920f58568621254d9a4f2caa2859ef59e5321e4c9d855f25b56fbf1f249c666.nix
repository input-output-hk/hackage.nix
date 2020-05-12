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
      specVersion = "1.20";
      identifier = { name = "ldapply"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2017, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Igor Pashev <pashev.igor@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "LDIF idempotent apply tool";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ldapply" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
            (hsPkgs."LDAP" or (errorHandler.buildDepError "LDAP"))
            (hsPkgs."ldif" or (errorHandler.buildDepError "ldif"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }