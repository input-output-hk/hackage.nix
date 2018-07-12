{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cognito-identity";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Cognito Identity SDK.";
        description = "Amazon Cognito is a web service that facilitates the delivery of\nscoped, temporary credentials to mobile devices or other untrusted\nenvironments. Amazon Cognito uniquely identifies a device or user and\nsupplies the user with a consistent identity throughout the lifetime of\nan application. Amazon Cognito lets users authenticate with third-party\nidentity providers (Facebook, Google, or Login with Amazon). As a\ndeveloper, you decide which identity providers to trust. You can also\nchoose to support unauthenticated access from your application. Your\nusers are provided with Cognito tokens that uniquely identify their\ndevice and any information provided about third-party logins.\n\n/See:/ <http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-cognito-identity" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }