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
      specVersion = "1.9.2";
      identifier = { name = "lucienne"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alexander Bau";
      author = "Alexander Bau";
      homepage = "http://www.imn.htwk-leipzig.de/~abau/lucienne";
      url = "";
      synopsis = "Server side feed aggregator/reader";
      description = "Lucienne is a simple server side feed aggregator/reader that helps you managing your subscribed feeds.\nIt provides multi user support using basic access authentication. A running mongoDB (<http://www.mongodb.org>) serves as database backend.\n\n/Installing instructions:/\n\n1. Run a mongoDB instance\n\n2. @cabal install@ this package. This will result in two executables: @lucienne@ and @lucienne-fetch@.\n\n3. Run @lucienne@. You might want to limit the maximum heap size,\ne.g. @lucienne +RTS -M30m@\n\n4. Run @lucienne-fetch@ periodically (e.g. by a cron job)\n\nLucienne accepts the following options:\n\n> lucienne:\n>   -p PORT  --port=PORT          Port of incoming requests\n>   -d HOST  --databaseHost=HOST  Database host\n>   -e PORT  --databasePort=PORT  Database port\n>   -h       --help               Print this help";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lucienne" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
            (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            ];
          buildable = true;
          };
        "lucienne-fetch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }