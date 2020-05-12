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
    flags = { relativepath = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apelsin"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christoffer@ojeling.net";
      author = "Christoffer Öjeling";
      homepage = "";
      url = "";
      synopsis = "Server and community browser for the game Tremulous";
      description = "A gtk2hs server and clan browser for the open source game Tremulous <http://tremulous.net>.\nBoth Tremulous 1.1 and GPP are supported.\n\nFeatures filtering, player search, a list of online clan members, a clan list and basic perferences.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "apelsin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tremulous-query" or (errorHandler.buildDepError "tremulous-query"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }