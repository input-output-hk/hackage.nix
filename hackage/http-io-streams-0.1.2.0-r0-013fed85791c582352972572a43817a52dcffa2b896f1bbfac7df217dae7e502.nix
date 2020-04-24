{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { brotli = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "http-io-streams"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2012-2018 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>,\nHerbert Valerio Riedel <hvr@gnu.org>";
      homepage = "";
      url = "";
      synopsis = "HTTP client based on io-streams";
      description = "An HTTP client, using the Snap Framework's [io-streams](https://hackage.haskell.org/package/io-streams) library to\nhandle the streaming IO. The @http-io-streams@ API designed for ease of use when querying web services and dealing with the result as streaming I/O.\n\nThe library is exported in a single module; see \"Network.Http.Client\"\nfor full documentation.\n\n__NOTE__: This is a fork of [http-streams](http://hackage.haskell.org/package/http-streams)\nwith a lighter dependency footprint which focuses on core HTTP\nfunctionality and as a consequence doesn't include out-of-the-box\nsupport for handling JSON data. If you need support for handling JSON\nweb-services, you should use the original @http-streams@ package instead of\nthis package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."openssl-streams" or ((hsPkgs.pkgs-errors).buildDepError "openssl-streams"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (flags.brotli) (hsPkgs."brotli-streams" or ((hsPkgs.pkgs-errors).buildDepError "brotli-streams"));
        buildable = true;
        };
      };
    }