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
      identifier = { name = "lio-simple"; version = "0.0.2.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "hails@scs.stanford.edu";
      author = "Hails team";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "LIO support for the Simple web framework";
      description = "\\lio-simple\\ adds LIO support for the \\Simple\\ \\\"framework-less\\\"\nweb framework.  \\Simple\\ is minimalist, providing a lightweight base\n- the most basic \\Simple\\ app is little more than a WAI\n`Application` with some routing logic. Everything else (e.g.\nauthentication, controllers, persistence, caching etc\\') is provided\nin composable units, so you can include only the ones you need in\nyour app, and easily replace with your own components.\nLIO is an information flow control library that lets you enforce\nvarious security policies, including mandatory and discretionary\naccess control.\n\nTo get started, create an app skeleton with the `lio-simple` utility:\n\n@\n$ cabal install lio-simple\n$ lio-simple my_app_name\n$ cd my_app_name\n$ cabal run\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
          (hsPkgs."simple" or (errorHandler.buildDepError "simple"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."simple-templates" or (errorHandler.buildDepError "simple-templates"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "lio-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."simple-templates" or (errorHandler.buildDepError "simple-templates"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }