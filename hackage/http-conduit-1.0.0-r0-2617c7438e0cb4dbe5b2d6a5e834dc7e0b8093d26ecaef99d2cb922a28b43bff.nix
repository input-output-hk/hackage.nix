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
    flags = { test = false; network-bytestring = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-conduit"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with conduit interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid direct usage of conduits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."zlib-conduit" or (errorHandler.buildDepError "zlib-conduit"))
          (hsPkgs."blaze-builder-conduit" or (errorHandler.buildDepError "blaze-builder-conduit"))
          (hsPkgs."attoparsec-conduit" or (errorHandler.buildDepError "attoparsec-conduit"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."zlib-enum" or (errorHandler.buildDepError "zlib-enum"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."asn1-data" or (errorHandler.buildDepError "asn1-data"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      exes = {
        "http-conduit" = { buildable = if flags.test then true else false; };
        };
      };
    }