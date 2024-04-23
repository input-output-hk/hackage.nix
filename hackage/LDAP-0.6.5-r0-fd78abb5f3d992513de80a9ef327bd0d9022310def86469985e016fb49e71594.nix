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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "LDAP"; version = "0.6.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2009 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ldap-haskell";
      url = "";
      synopsis = "Haskell binding for C LDAP API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        libs = [ (pkgs."ldap" or (errorHandler.sysDepError "ldap")) ];
        buildable = true;
      };
      exes = {
        "runtests" = {
          depends = pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs."base" or (errorHandler.buildDepError "base"));
          libs = [ (pkgs."ldap" or (errorHandler.sysDepError "ldap")) ];
          buildable = if flags.buildtests then true else false;
        };
      };
    };
  }