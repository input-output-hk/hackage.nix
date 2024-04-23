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
      identifier = { name = "netlink"; version = "1.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "David Anderson";
      homepage = "https://github.com/Ongy/netlink-hs";
      url = "";
      synopsis = "Netlink communication for Haskell";
      description = "Library to comminicate with Linux kernel via Netlink";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
        ];
        buildable = true;
      };
      exes = {
        "dump_nl80211" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
          ];
          buildable = true;
        };
        "genlinfo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
          ];
          buildable = true;
        };
        "dump_rtnetlink" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
          ];
          buildable = true;
        };
      };
    };
  }