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
      identifier = { name = "http-enumerator"; version = "0.7.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with enumerator interface and HTTPS support. (deprecated)";
      description = "This package has been deprecated in favor of http-conduit (<http://hackage.haskell.org/package/http-conduit>), which provides a more powerful and simpler interface. The API is very similar, and migrating should not be problematic. Send concerns about this move to the maintainer (address listed above).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."zlib-enum" or (errorHandler.buildDepError "zlib-enum"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
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
        "http-enumerator" = { buildable = if flags.test then true else false; };
        };
      };
    }