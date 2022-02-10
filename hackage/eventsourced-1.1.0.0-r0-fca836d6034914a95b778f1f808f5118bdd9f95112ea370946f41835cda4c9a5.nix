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
      identifier = { name = "eventsourced"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "2016 Richard Towers";
      maintainer = "richard@richard-towers.com";
      author = "Richard Towers";
      homepage = "https://github.com/githubuser/eventsourced#readme";
      url = "";
      synopsis = "Server-Sent Events the UNIX way";
      description = "@eventsourced@ streams stdin to a TCP\\/IP port as @text\\/event-source@.\n\nOn the server:\n\n\n> $ ping example.com | eventsourced --port=1337 --allow-origin=localhost\n\n\nIn the browser:\n\n\n>  new EventSource('http://0.0.0.0:1337').onmessage = e => console.log(e.data)\n>  PING example.com (93.184.216.34): 56 data bytes\n>  64 bytes from 93.184.216.34: icmp_seq=0 ttl=50 time=86.586 ms\n>  64 bytes from 93.184.216.34: icmp_seq=1 ttl=50 time=89.107 ms\n>  64 bytes from 93.184.216.34: icmp_seq=2 ttl=50 time=88.805 ms\n>  64 bytes from 93.184.216.34: icmp_seq=3 ttl=50 time=88.843 ms\n>  64 bytes from 93.184.216.34: icmp_seq=4 ttl=50 time=89.181 ms\n>  64 bytes from 93.184.216.34: icmp_seq=5 ttl=50 time=89.159 ms\n>  64 bytes from 93.184.216.34: icmp_seq=6 ttl=50 time=87.214 ms\n>  ...\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
        buildable = true;
        };
      exes = {
        "eventsourced" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."eventsourced" or (errorHandler.buildDepError "eventsourced"))
            ];
          buildable = true;
          };
        };
      tests = {
        "eventsourced-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."eventsourced" or (errorHandler.buildDepError "eventsourced"))
            ];
          buildable = true;
          };
        };
      };
    }