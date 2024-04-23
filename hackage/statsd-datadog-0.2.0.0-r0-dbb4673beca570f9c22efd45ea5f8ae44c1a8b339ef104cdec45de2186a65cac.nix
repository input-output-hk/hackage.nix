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
      identifier = { name = "statsd-datadog"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/statsd-datadog";
      url = "";
      synopsis = "DataDog-flavored StatsD client.";
      description = "StatsD client for UDP protocol.\n\n> import Network.StatsD\n>\n> main = do\n>     sd <- connectStatsD \"localhost\" \"8125\"\n>     sendStatsDIO sd (counter_ \"launches\")\n>     sendStatsDIO sd (event \"Datadog extensions\" \"DD Agent provides a statsd protocol extension for events.\")";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }