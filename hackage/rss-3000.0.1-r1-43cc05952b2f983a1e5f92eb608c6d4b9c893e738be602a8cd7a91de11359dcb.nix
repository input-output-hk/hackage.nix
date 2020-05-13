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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "rss"; version = "3000.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Jeremy Shaw 2004, Bjorn Bringert 2004-2006";
      maintainer = "bjorn@bringert.net";
      author = "Jeremy Shaw, Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A library for generating RSS 2.0 feeds.";
      description = "This library allows you to generate RSS 2.0 feeds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }