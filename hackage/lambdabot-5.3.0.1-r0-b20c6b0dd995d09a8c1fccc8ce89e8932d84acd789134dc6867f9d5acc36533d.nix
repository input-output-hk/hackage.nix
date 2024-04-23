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
      identifier = { name = "lambdabot"; version = "5.3.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot is a development tool and advanced IRC bot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
            (hsPkgs."lambdabot-haskell-plugins" or (errorHandler.buildDepError "lambdabot-haskell-plugins"))
            (hsPkgs."lambdabot-irc-plugins" or (errorHandler.buildDepError "lambdabot-irc-plugins"))
            (hsPkgs."lambdabot-misc-plugins" or (errorHandler.buildDepError "lambdabot-misc-plugins"))
            (hsPkgs."lambdabot-novelty-plugins" or (errorHandler.buildDepError "lambdabot-novelty-plugins"))
            (hsPkgs."lambdabot-reference-plugins" or (errorHandler.buildDepError "lambdabot-reference-plugins"))
            (hsPkgs."lambdabot-social-plugins" or (errorHandler.buildDepError "lambdabot-social-plugins"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }