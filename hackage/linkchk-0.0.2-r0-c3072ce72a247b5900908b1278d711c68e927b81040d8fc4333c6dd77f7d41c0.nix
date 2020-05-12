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
      identifier = { name = "linkchk"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jens-Ulrik Petersen <juhp@01.246.ne.jp>";
      author = "Jens-Ulrik Petersen";
      homepage = "http://www.haskell.org/~petersen/haskell/linkchk/";
      url = "";
      synopsis = "linkchk is a network interface link ping monitor.";
      description = "It supports both IPv4 and IPv6. It works by monitoring\nthe routing table and pinging the gateway (next hop)\nof a network interface. When the link is up and functioning\nthe ping time is displayed in a small gtk window, otherwise\nthe link status is displayed. linkchk can also run in a tty.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "linkchk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."popenhs" or (errorHandler.buildDepError "popenhs"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            ];
          buildable = true;
          };
        };
      };
    }