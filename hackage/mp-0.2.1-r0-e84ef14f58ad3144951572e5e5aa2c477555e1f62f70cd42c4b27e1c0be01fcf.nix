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
      specVersion = "1.12";
      identifier = { name = "mp"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Piotr Borek <piotrborek@op.pl>";
      author = "Piotr Borek <piotrborek@op.pl>";
      homepage = "http://code.google.com/p/linux-music-player";
      url = "";
      synopsis = "Music player for linux.";
      description = "Music player for linux.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."daemons" or (errorHandler.buildDepError "daemons"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."gstreamer" or (errorHandler.buildDepError "gstreamer"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }