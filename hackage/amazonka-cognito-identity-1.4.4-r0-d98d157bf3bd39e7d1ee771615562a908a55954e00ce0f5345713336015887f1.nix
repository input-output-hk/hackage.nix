{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-cognito-identity"; version = "1.4.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Cognito Identity SDK.";
      description = "Amazon Cognito\nAmazon Cognito is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. Amazon Cognito uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.\nUsing Amazon Cognito, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon), and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.\nTo provide end-user credentials, first make an unsigned call to < GetId>. If the end user is authenticated with one of the supported identity providers, set the\n@\nLogins\n@\nmap with the identity provider token.\n@\nGetId\n@\nreturns a unique identifier for the user.\nNext, make an unsigned call to < GetCredentialsForIdentity>. This call expects the same\n@\nLogins\n@\nmap as the\n@\nGetId\n@\ncall, as well as the\n@\nIdentityID\n@\noriginally returned by\n@\nGetId\n@\n. Assuming your identity pool has been configured via the < SetIdentityPoolRoles> operation,\n@\nGetCredentialsForIdentity\n@\nwill return AWS credentials for your use. If your pool has not been configured with\n@\nSetIdentityPoolRoles\n@\n, or if you want to follow legacy flow, make an unsigned call to < GetOpenIdToken>, which returns the OpenID token necessary to call STS and retrieve AWS credentials. This call expects the same\n@\nLogins\n@\nmap as the\n@\nGetId\n@\ncall, as well as the\n@\nIdentityID\n@\noriginally returned by\n@\nGetId\n@\n. The token returned by\n@\nGetOpenIdToken\n@\ncan be passed to the STS operation <http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html AssumeRoleWithWebIdentity> to retrieve AWS credentials.\nIf you want to use Amazon Cognito in an Android, iOS, or Unity application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the <http://docs.aws.amazon.com/mobile/index.html AWS Mobile SDK Developer Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CognitoIdentity\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      tests = {
        "amazonka-cognito-identity-test" = {
          depends = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cognito-identity)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }