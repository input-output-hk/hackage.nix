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
      identifier = { name = "pgdl"; version = "8.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sifmelcara";
      author = "sifmelcara";
      homepage = "";
      url = "";
      synopsis = "simply download a video (or a file) from a webpage and xdg-open it.";
      description = "a terminal user interface program downloads video (or a file) from nginx file index page and play it.\n(Linux: xdg-open \"video.mp4\", MACOSX: open \"video.mp4\")\n\nClient: Only for Linux and MACOSX.\nServer: Only for nginx's file download page.\n\nThe program will sort the files and folders by date while files in nginx's download page just sort by name.\n\nFor shortcut keys, please visit <https://github.com/sifmelcara/pgdl>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }