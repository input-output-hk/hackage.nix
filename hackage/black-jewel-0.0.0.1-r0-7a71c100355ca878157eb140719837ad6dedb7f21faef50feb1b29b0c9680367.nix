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
      identifier = { name = "black-jewel"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "KAction@gnu.org";
      author = "Dmitry Bogatov";
      homepage = "http://git.kaction.name/black-jewel";
      url = "";
      synopsis = "The pirate bay client.";
      description = "Interactive torrent search utility. It support following commands:\n\n'find' -- execute search\n\n'more' -- find more results.\n\n'list' -- display found results.\n\n'show' -- display meta-information via your pager.\n\n'save' -- save corresponding .torrent file in current directory.\n\nParsing torrent takes time, so program use lazy IO to not waste user's time.\nHere is need for 'more' command.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "black-jewel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."download" or (errorHandler.buildDepError "download"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dummy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }