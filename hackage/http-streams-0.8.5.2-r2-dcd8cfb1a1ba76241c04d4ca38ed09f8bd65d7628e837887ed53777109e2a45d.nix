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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "http-streams"; version = "0.8.5.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2012-2017 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "http://github.com/afcowie/http-streams/";
      url = "";
      synopsis = "An HTTP client using io-streams";
      description = "/Overview/\n\nAn HTTP client, using the Snap Framework's 'io-streams' library to\nhande the streaming IO. The API is optimized for ease of use for the\nrather common case of code needing to query web services and deal with\nthe result.\n\nThe library is exported in a single module; see \"Network.Http.Client\"\nfor full documentation.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."openssl-streams" or (errorHandler.buildDepError "openssl-streams"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-common" or (errorHandler.buildDepError "http-common"))
        ] ++ [
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."openssl-streams" or (errorHandler.buildDepError "openssl-streams"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-common" or (errorHandler.buildDepError "http-common"))
            (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          ];
          buildable = true;
        };
      };
    };
  }