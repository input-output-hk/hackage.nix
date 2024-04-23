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
      specVersion = "2.2";
      identifier = { name = "base-encoding"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "RFC4648 Binary-to-text encodings (e.g. base64)";
      description = "This package provides a simple and convenient API to encode and\ndecode binary data in the popular binary-to-text \\\"base\\\" encoding\nfamily as described in [RFC 4648](https://tools.ietf.org/html/rfc4648) et al.\n\nCurrently, the following encodings are supported:\n\n- (unpadded) @base16@ (RFC4648)\n- (padded) @base32@ (RFC4648)\n- (padded) @base32hex@ (RFC4648)\n- (padded) @base64@ (RFC4648)\n- padded @base64url@ (RFC4648)\n- unpadded @base64url@ (RFC4648)\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }