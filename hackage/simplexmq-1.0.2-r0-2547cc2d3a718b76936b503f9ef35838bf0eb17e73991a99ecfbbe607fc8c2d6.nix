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
      identifier = { name = "simplexmq"; version = "1.0.2"; };
      license = "AGPL-3.0-only";
      copyright = "2020-2022 simplex.chat";
      maintainer = "chat@simplex.chat";
      author = "simplex.chat";
      homepage = "https://github.com/simplex-chat/simplexmq#readme";
      url = "";
      synopsis = "SimpleXMQ message broker";
      description = "This package includes <./docs/Simplex-Messaging-Server.html server>,\n<./docs/Simplex-Messaging-Client.html client> and\n<./docs/Simplex-Messaging-Agent.html agent> for SMP protocols:\n\n* <https://github.com/simplex-chat/simplexmq/blob/master/protocol/simplex-messaging.md SMP protocol>\n* <https://github.com/simplex-chat/simplexmq/blob/master/protocol/agent-protocol.md SMP agent protocol>\n\nSee <https://github.com/simplex-chat/simplex-chat terminal chat prototype> built with SimpleXMQ broker.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."cryptostore" or (errorHandler.buildDepError "cryptostore"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."simple-logger" or (errorHandler.buildDepError "simple-logger"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      exes = {
        "smp-agent" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."cryptostore" or (errorHandler.buildDepError "cryptostore"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."simple-logger" or (errorHandler.buildDepError "simple-logger"))
            (hsPkgs."simplexmq" or (errorHandler.buildDepError "simplexmq"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            ];
          buildable = true;
          };
        "smp-server" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."cryptostore" or (errorHandler.buildDepError "cryptostore"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."simple-logger" or (errorHandler.buildDepError "simple-logger"))
            (hsPkgs."simplexmq" or (errorHandler.buildDepError "simplexmq"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            ];
          buildable = true;
          };
        };
      tests = {
        "smp-server-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."cryptostore" or (errorHandler.buildDepError "cryptostore"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."simple-logger" or (errorHandler.buildDepError "simple-logger"))
            (hsPkgs."simplexmq" or (errorHandler.buildDepError "simplexmq"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            ];
          buildable = true;
          };
        };
      };
    }