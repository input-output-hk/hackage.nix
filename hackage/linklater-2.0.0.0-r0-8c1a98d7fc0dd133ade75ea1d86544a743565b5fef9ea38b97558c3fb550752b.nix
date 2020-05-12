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
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "linklater"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@haolian.org";
      author = "Hao Lian <me@haolian.org>";
      homepage = "https://github.com/hlian/linklater";
      url = "";
      synopsis = "The fast and fun way to write Slack.com bots";
      description = "\n__A library for writing <https://slack.com/> Slack chat bots.__\n\nTutorial: <https://github.com/hlian/linklater/wiki/Tutorial>\n\nFeatures you could take advantage of /right now, should you choose/:\n\n* Uses 'Text' for state-of-the-art Unicode support;\n* Lovely documentation with no misspelllllings to be found;\n* A warm, receptive maintainer with beautiful brown eyes;\n* Fully Haddock'd methods and module;\n* Open source (BSD3).\n\nFor example, maybe you want this little guy to show up in your channel:\n\n<<corgi.jpg>>\n\nFind out how by clicking on \"Network.Linklater\"!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
        buildable = true;
        };
      };
    }