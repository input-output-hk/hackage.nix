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
      identifier = { name = "nikepub"; version = "1.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "uwe@codemanic.com";
      author = "Uwe Hoffmann";
      homepage = "http://www.codemanic.com/uwe";
      url = "";
      synopsis = "Command line utility publishes Nike+ runs on blogs and Twitter";
      description = "Simple commandline program that given a Nike+ user id will fetch the\nmost recent Nike+ run and publish it to any blog and/or Twitter account.\nAssumes the Nike+ user profile is public. Supports customizable templates\nfor the blog entry title, body and Twitter status update. Any blogging\nsystem with XML-RPC support for metaWeblog.newPost\n(like WordPress or MovableType) is supported.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nikepub" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."GoogleChart" or (errorHandler.buildDepError "GoogleChart"))
            (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."hs-twitter" or (errorHandler.buildDepError "hs-twitter"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          ];
          buildable = true;
        };
      };
    };
  }