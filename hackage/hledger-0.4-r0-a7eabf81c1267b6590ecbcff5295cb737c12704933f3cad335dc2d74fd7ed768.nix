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
    flags = { vty = true; happs = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hledger"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A ledger-compatible text-based accounting tool.";
      description = "hledger is a partial haskell clone of John Wiegley's \"ledger\" text-based\naccounting tool. It generates ledger-compatible register & balance reports\nfrom a plain text journal, and demonstrates a functional implementation of ledger.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "hledger" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (errorHandler.buildDepError "vty"))) ++ (pkgs.lib).optionals (flags.happs) [
            (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
            (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }