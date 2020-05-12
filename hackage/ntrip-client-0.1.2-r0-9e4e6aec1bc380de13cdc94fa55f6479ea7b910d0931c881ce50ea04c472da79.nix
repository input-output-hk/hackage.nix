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
      identifier = { name = "ntrip-client"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "";
      url = "";
      synopsis = "NTRIP client.";
      description = "Networked Transport of RTCM via Internet Protocol client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "ntrip-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."ntrip-client" or (errorHandler.buildDepError "ntrip-client"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        };
      };
    }