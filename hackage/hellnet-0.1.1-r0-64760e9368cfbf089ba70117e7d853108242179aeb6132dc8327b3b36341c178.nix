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
      specVersion = "1.4";
      identifier = { name = "hellnet"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://bitcheese.net/wiki/hellnet/hspawn";
      url = "";
      synopsis = "Simple, distributed, anonymous data sharing network.";
      description = "Hellnet is a project to create simple, distributed, anonymous data sharing network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."hjpath" or (errorHandler.buildDepError "hjpath"))
          (hsPkgs."hjson" or (errorHandler.buildDepError "hjson"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
          (hsPkgs."uri" or (errorHandler.buildDepError "uri"))
          ];
        buildable = true;
        };
      exes = {
        "hell-insert" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "hell-get" = {
          depends = [
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = true;
          };
        "hell-meta" = { buildable = true; };
        "hell-nodes" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "hell-fsck" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "hell-serve" = {
          depends = [
            (hsPkgs."Lucu" or (errorHandler.buildDepError "Lucu"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }