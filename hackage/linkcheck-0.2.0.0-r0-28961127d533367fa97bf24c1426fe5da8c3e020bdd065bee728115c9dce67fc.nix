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
      specVersion = "1.12";
      identifier = { name = "linkcheck"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020-2024 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/linkcheck#readme";
      url = "";
      synopsis = "Check for broken links in CI";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."lrucache" or (errorHandler.buildDepError "lrucache"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."validity-network-uri" or (errorHandler.buildDepError "validity-network-uri"))
        ];
        buildable = true;
      };
      exes = {
        "linkcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linkcheck" or (errorHandler.buildDepError "linkcheck"))
          ];
          buildable = true;
        };
      };
    };
  }