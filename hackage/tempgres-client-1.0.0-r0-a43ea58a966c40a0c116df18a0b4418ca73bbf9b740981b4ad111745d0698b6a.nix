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
      specVersion = "1.12";
      identifier = { name = "tempgres-client"; version = "1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2014-2023 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/ClockworkConsulting/tempgres-client-hs#readme";
      url = "";
      synopsis = "Client library for Tempgres.";
      description = "Client library for <https://github.com/ClockworkConsulting/tempgres-server Tempgres> for conveniently creating temporary PostgreSQL databases for use in tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }