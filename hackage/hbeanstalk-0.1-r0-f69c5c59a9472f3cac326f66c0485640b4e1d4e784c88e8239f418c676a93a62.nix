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
      specVersion = "1.6";
      identifier = { name = "hbeanstalk"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010, Greg Heartsfield";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Greg Heartsfield <scsibug@imap.cc>";
      homepage = "http://github.com/scsibug/hbeanstalk/";
      url = "";
      synopsis = "Client for the beanstalkd workqueue service.";
      description = "This is the hbeanstalk library.  It provides a client\ninterface to a beanstalkd server, allowing Haskell to be\na producer and/or a consumer of work items.  Let Haskell\ndo your heavy lifting!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }