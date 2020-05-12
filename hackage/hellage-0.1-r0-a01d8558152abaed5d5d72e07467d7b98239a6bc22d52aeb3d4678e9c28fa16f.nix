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
      identifier = { name = "hellage"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "";
      url = "";
      synopsis = "Distributed hackage mirror";
      description = "Distributed hackage mirror, based on Hellnet.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hellage" = {
          depends = [
            (hsPkgs."hellnet" or (errorHandler.buildDepError "hellnet"))
            (hsPkgs."Lucu" or (errorHandler.buildDepError "Lucu"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hjson" or (errorHandler.buildDepError "hjson"))
            (hsPkgs."hjpath" or (errorHandler.buildDepError "hjpath"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "hellage-genmeta" = {
          depends = [
            (hsPkgs."hellnet" or (errorHandler.buildDepError "hellnet"))
            (hsPkgs."hjpath" or (errorHandler.buildDepError "hjpath"))
            (hsPkgs."hjson" or (errorHandler.buildDepError "hjson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }