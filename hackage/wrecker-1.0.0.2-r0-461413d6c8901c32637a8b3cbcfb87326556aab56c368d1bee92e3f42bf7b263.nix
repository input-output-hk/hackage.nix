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
      identifier = { name = "wrecker"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jose.zap@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/lorenzo/wrecker#readme";
      url = "";
      synopsis = "An HTTP Performance Benchmarker";
      description = "'wrecker' is a library and executable for creating HTTP benchmarks. It is designed for\nbenchmarking a series of dependent requests.\n'wrecker' includes a wrapped version of the `wreq` Session API\n, mainly through 'Network.Wreq.Wrecker'.\nSee <https://github.com/lorenzo/wrecker#readme> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."ansigraph" or (errorHandler.buildDepError "ansigraph"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."clock-extras" or (errorHandler.buildDepError "clock-extras"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."next-ref" or (errorHandler.buildDepError "next-ref"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."threads" or (errorHandler.buildDepError "threads"))
          (hsPkgs."threads-extras" or (errorHandler.buildDepError "threads-extras"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
          (hsPkgs."threads-extras" or (errorHandler.buildDepError "threads-extras"))
          (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
          ];
        buildable = true;
        };
      exes = {
        "wreck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        "example-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
            (hsPkgs."next-ref" or (errorHandler.buildDepError "next-ref"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "example-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
            (hsPkgs."next-ref" or (errorHandler.buildDepError "next-ref"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "wrecker-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
            (hsPkgs."next-ref" or (errorHandler.buildDepError "next-ref"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }