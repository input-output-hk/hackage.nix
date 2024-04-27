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
    flags = { crypton = true; devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "http2-tls"; version = "0.2.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "https://github.com/kazu-yamamoto/http2-tls";
      url = "";
      synopsis = "Library for HTTP/2 over TLS";
      description = "Using the HTTP/2 library over TLS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time-manager" or (errorHandler.buildDepError "time-manager"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
          (hsPkgs."network-control" or (errorHandler.buildDepError "network-control"))
          (hsPkgs."recv" or (errorHandler.buildDepError "recv"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ] ++ (if flags.crypton
          then [
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."crypton-x509-store" or (errorHandler.buildDepError "crypton-x509-store"))
            (hsPkgs."crypton-x509-validation" or (errorHandler.buildDepError "crypton-x509-validation"))
          ]
          else [
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          ]);
        buildable = true;
      };
      exes = {
        "h2-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
            (hsPkgs."http2-tls" or (errorHandler.buildDepError "http2-tls"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          ];
          buildable = if flags.devel then true else false;
        };
        "h2-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
            (hsPkgs."http2-tls" or (errorHandler.buildDepError "http2-tls"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."tls-session-manager" or (errorHandler.buildDepError "tls-session-manager"))
          ];
          buildable = if flags.devel then true else false;
        };
      };
    };
  }