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
      identifier = { name = "bamboo"; version = "2009.4.25"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo/tree/master";
      url = "";
      synopsis = "A simple blog engine on Hack";
      description = "A simple blog engine on Hack";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template" or (errorHandler.buildDepError "template"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."hyena" or (errorHandler.buildDepError "hyena"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
          (hsPkgs."parsedate" or (errorHandler.buildDepError "parsedate"))
          (hsPkgs."rss" or (errorHandler.buildDepError "rss"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."kibro" or (errorHandler.buildDepError "kibro"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."gravatar" or (errorHandler.buildDepError "gravatar"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."hcheat" or (errorHandler.buildDepError "hcheat"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
        ];
        buildable = true;
      };
    };
  }