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
      identifier = { name = "hawitter"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa <xanxys@gmail.com>";
      author = "Daiki Handa <xanxys@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A twitter client for GTK+. Alpha version.";
      description = "THIS SOFTWARE IS STILL IN ALPHA STATE.\nA slick twitter client for GTK. Features syntax highlighting of tweets, URL linking/shortening and\n'timeline modifier'.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hawitter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."gconf" or (errorHandler.buildDepError "gconf"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }