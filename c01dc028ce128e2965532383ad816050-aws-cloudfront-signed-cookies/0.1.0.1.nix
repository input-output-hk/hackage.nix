{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-cloudfront-signed-cookies";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2018 Typeclass Consulting, LLC";
        maintainer = "Chris Martin, Julie Moronuki";
        author = "Chris Martin";
        homepage = "https://github.com/typeclasses/aws-cloudfront-signed-cookies";
        url = "";
        synopsis = "Generate signed cookies for AWS CloudFront";
        description = "One way to [serve private content through AWS CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html) is to use [signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-cookies.html). This package helps you generate signed cookies [using a custom IAM policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-setting-signed-cookie-custom-policy.html) which may include a range of time for which the cookie is valid and an IP address restriction.";
        buildType = "Simple";
      };
      components = {
        aws-cloudfront-signed-cookies = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.asn1-encoding
            hsPkgs.asn1-types
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cookie
            hsPkgs.cryptonite
            hsPkgs.optparse-applicative
            hsPkgs.pem
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          aws-cloudfront-signed-cookies = {
            depends  = [
              hsPkgs.aws-cloudfront-signed-cookies
              hsPkgs.base
            ];
          };
        };
      };
    }