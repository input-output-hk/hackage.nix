{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "aws-cloudfront-signer"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "http://github.com/cdornan/cloudfront-signer";
      url = "";
      synopsis = "CloudFront URL signer";
      description = "Provides functions for reading in the signing keys from file and making up time-limited, signed URLS for accessing CloudFront-hosted files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.RSA)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          ];
        };
      };
    }