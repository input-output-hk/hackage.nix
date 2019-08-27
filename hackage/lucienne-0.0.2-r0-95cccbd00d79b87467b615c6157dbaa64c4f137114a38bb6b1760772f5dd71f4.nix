let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
            (hsPkgs."compact-string-fix" or (buildDepError "compact-string-fix"))
            (hsPkgs."happstack" or (buildDepError "happstack"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bson" or (buildDepError "bson"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            ];
          };
        "lucienne-fetch" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
            (hsPkgs."compact-string-fix" or (buildDepError "compact-string-fix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bson" or (buildDepError "bson"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }