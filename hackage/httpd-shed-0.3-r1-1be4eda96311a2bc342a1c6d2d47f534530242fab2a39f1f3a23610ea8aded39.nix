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
      specVersion = "1.2";
      identifier = { name = "httpd-shed"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Andy Gill";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "A simple web-server with an interact style API";
      description = "This web server promotes a Request to IO Response function\ninto a local web server. The user can decide how to interpret\nthe requests, and the library is intended for implementing Ajax APIs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
      exes = { "test" = { buildable = true; }; };
    };
  }