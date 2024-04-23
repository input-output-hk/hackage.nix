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
      identifier = { name = "azure-acs"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Hemanth Kapila (c) 2014";
      maintainer = "saihemanth@gmail.com";
      author = "Hemanth Kapila";
      homepage = "https://github.com/kapilash/hs-azure";
      url = "";
      synopsis = "Windows Azure ACS ";
      description = "Haskell wrappers  over REST API for <http://msdn.microsoft.com/en-us/library/hh147631.aspx Windows Azure Active Directory Access Control>.\nCurrently only API that is supported is the one to request a password token from ACS via the <http://msdn.microsoft.com/en-us/library/hh674475.aspx OAuth WRAP  protocol>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
        ];
        buildable = true;
      };
    };
  }