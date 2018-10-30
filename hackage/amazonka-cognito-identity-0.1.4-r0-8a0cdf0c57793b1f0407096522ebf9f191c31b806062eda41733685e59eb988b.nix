{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-cognito-identity";
        version = "0.1.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Cognito Identity SDK.";
      description = "Amazon Cognito is a web service that facilitates the delivery of scoped,\ntemporary credentials to mobile devices or other untrusted environments.\nAmazon Cognito uniquely identifies a device or user and supplies the user\nwith a consistent identity throughout the lifetime of an application. Amazon\nCognito lets users authenticate with third-party identity providers\n(Facebook, Google, or Login with Amazon). As a developer, you decide which\nidentity providers to trust. You can also choose to support unauthenticated\naccess from your application. Your users are provided with Cognito tokens\nthat uniquely identify their device and any information provided about\nthird-party logins.\n\n/See:/ <http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }