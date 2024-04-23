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
      identifier = { name = "servant-postgresql"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora SEA";
      maintainer = "alp@zalora.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/zalora/servant-postgresql";
      url = "";
      synopsis = "Useful functions and instances for using servant with a PostgreSQL context";
      description = "Useful functions and instances for using servant with a PostgreSQL context";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-pool" or (errorHandler.buildDepError "servant-pool"))
          (hsPkgs."servant-response" or (errorHandler.buildDepError "servant-response"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }