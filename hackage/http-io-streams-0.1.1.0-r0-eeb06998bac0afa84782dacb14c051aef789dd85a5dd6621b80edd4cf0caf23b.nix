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
    flags = { brotli = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "http-io-streams"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2012-2018 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "";
      url = "";
      synopsis = "HTTP client based on io-streams";
      description = "An HTTP client, using the Snap Framework's [io-streams](https://hackage.haskell.org/package/io-streams) library to\nhandle the streaming IO. The @http-io-streams@ API designed for ease of use when querying web services and dealing with the result as streaming I/O.\n\nThe library is exported in a single module; see \"Network.Http.Client\"\nfor full documentation.\n\n__NOTE__: This is a fork of [http-streams](http://hackage.haskell.org/package/http-streams)\nwith a lighter dependency footprint which focuses on core HTTP\nfunctionality and as a consequence doesn't include out-of-the-box\nsupport for handling JSON data. If you need support for handling JSON\nweb-services, you should use the original @http-streams@ package instead of\nthis package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."openssl-streams" or (errorHandler.buildDepError "openssl-streams"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ pkgs.lib.optional (flags.brotli) (hsPkgs."brotli-streams" or (errorHandler.buildDepError "brotli-streams"));
        buildable = true;
      };
    };
  }