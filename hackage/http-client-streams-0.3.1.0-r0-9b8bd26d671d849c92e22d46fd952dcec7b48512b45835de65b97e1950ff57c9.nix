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
    flags = { tls = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "http-client-streams"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2014";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "http-client for io-streams supporting openssl";
      description = "\nThin io-streams wrapper for http-client w/ openssl support.\nTo use the tls package (instead of openssl) compile with the TLS flag\n\n@ cabal configure -ftls @\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ (if flags.tls
          then [
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          ]
          else [
            (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          ]);
        buildable = true;
      };
    };
  }