{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "lucienne";
          version = "0.0.1";
        };
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
          lucienne = {
            depends  = [
              hsPkgs.base
              hsPkgs.mongoDB
              hsPkgs.compact-string-fix
              hsPkgs.happstack
              hsPkgs.happstack-server
              hsPkgs.blaze-html
              hsPkgs.mtl
              hsPkgs.bson
              hsPkgs.SHA
              hsPkgs.bytestring
              hsPkgs.HTTP
              hsPkgs.feed
              hsPkgs.time
              hsPkgs.network
              hsPkgs.text
              hsPkgs.base64-bytestring
            ];
          };
          lucienne-fetch = {
            depends  = [
              hsPkgs.base
              hsPkgs.mongoDB
              hsPkgs.compact-string-fix
              hsPkgs.mtl
              hsPkgs.bson
              hsPkgs.SHA
              hsPkgs.bytestring
              hsPkgs.HTTP
              hsPkgs.feed
              hsPkgs.time
              hsPkgs.network
              hsPkgs.text
            ];
          };
        };
      };
    }