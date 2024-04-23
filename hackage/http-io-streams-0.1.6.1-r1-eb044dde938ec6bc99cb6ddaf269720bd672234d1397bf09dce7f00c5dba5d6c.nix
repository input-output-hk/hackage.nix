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
    flags = { brotli = true; fast-xor = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "http-io-streams"; version = "0.1.6.1"; };
      license = "BSD-3-Clause AND GPL-2.0-or-later";
      copyright = "© 2012-2018 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>,\nHerbert Valerio Riedel <hvr@gnu.org>";
      homepage = "";
      url = "";
      synopsis = "HTTP and WebSocket client based on io-streams";
      description = "An HTTP client with WebSocket (RFC 6455) support, using the Snap Framework's [io-streams](https://hackage.haskell.org/package/io-streams) library to\nhandle the streaming IO. The @http-io-streams@ API designed for ease of use when querying web services and dealing with the result as streaming I/O.\n\nThe main HTTP/1.1 part of the library is exported in a single module \"Network.Http.Client\"; the WebSocket specific functionality is available from the \"Network.Http.Client.WebSocket\" module.\n\n__NOTE__: This package originally started as a fork of [http-streams](http://hackage.haskell.org/package/http-streams) with a lighter dependency footprint focusing on core HTTP functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."openssl-streams" or (errorHandler.buildDepError "openssl-streams"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ pkgs.lib.optional (flags.fast-xor) (hsPkgs."xor" or (errorHandler.buildDepError "xor"))) ++ pkgs.lib.optional (flags.brotli) (hsPkgs."brotli-streams" or (errorHandler.buildDepError "brotli-streams"));
        buildable = true;
      };
    };
  }