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
      specVersion = "1.4";
      identifier = { name = "follower"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "reb@cs.bilgi.edu.tr";
      author = "R. Emre Başar";
      homepage = "http://rebworks.net/projects/follower/";
      url = "";
      synopsis = "Follow Tweets anonymously";
      description = "A simple program for following Twitter posts anonymously.\n\nIf you plan to follow posts on Twitter, but do not want to create a user account this is the tool for you. With follower, you can create follow lists and track the tweets you haven't read before.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "follower" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hs-twitter" or (errorHandler.buildDepError "hs-twitter"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ];
          buildable = true;
        };
      };
    };
  }