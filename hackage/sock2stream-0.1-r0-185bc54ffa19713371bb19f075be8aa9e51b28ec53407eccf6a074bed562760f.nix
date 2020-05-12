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
      specVersion = "1.8";
      identifier = { name = "sock2stream"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2011 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/sock2stream";
      url = "";
      synopsis = "Tunnel a socket over a single datastream (stdin/stdout)";
      description = "This is an initial implementation of a socket multiplexer\\/demultiplexer to tunnel Unix domain sockets over pipes\\/streams.\n\nThe primary envisioned use is to tunnel Unix domain sockets over SSH like so:\n\n> mkfifo /tmp/sockin\n> ssh user@host socket2stream -l /path/to/remotesocket < /tmp/sockin | socket2stream -r /path/to/localsocket > /tmp/sockin";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sock2stream" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."chp" or (errorHandler.buildDepError "chp"))
            ];
          buildable = true;
          };
        };
      };
    }