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
      identifier = { name = "hs-twitterarchiver"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "http://github.com/deepakjois/hs-twitterarchiver";
      url = "";
      synopsis = "Commandline Twitter feed archiver";
      description = "`hs-twitterarchiver ` is a tool for generating an archive\nof a user's Twitter feed, in a file on a local computer\nusing JSON format.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs-twitterarchiver" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
          buildable = true;
        };
      };
    };
  }