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
      specVersion = "1.0";
      identifier = { name = "LDAP"; version = "0.6.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ldap-haskell";
      url = "";
      synopsis = "Haskell binding for C LDAP API";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."ldap" or (errorHandler.sysDepError "ldap")) ];
        buildable = true;
      };
    };
  }