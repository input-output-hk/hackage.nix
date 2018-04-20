{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cognito-identity";
          version = "1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Cognito Identity SDK.";
        description = "Amazon Cognito\nAmazon Cognito is a web service that delivers scoped temporary\ncredentials to mobile devices and other untrusted environments. Amazon\nCognito uniquely identifies a device and supplies the user with a\nconsistent identity over the lifetime of an application.\nUsing Amazon Cognito, you can enable authentication with one or more\nthird-party identity providers (Facebook, Google, or Login with Amazon),\nand you can also choose to support unauthenticated access from your app.\nCognito delivers a unique identifier for each user and acts as an OpenID\ntoken provider trusted by AWS Security Token Service (STS) to access\ntemporary, limited-privilege AWS credentials.\nTo provide end-user credentials, first make an unsigned call to GetId.\nIf the end user is authenticated with one of the supported identity\nproviders, set the @Logins@ map with the identity provider token.\n@GetId@ returns a unique identifier for the user.\nNext, make an unsigned call to GetCredentialsForIdentity. This call\nexpects the same @Logins@ map as the @GetId@ call, as well as the\n@IdentityID@ originally returned by @GetId@. Assuming your identity pool\nhas been configured via the SetIdentityPoolRoles operation,\n@GetCredentialsForIdentity@ will return AWS credentials for your use. If\nyour pool has not been configured with @SetIdentityPoolRoles@, or if you\nwant to follow legacy flow, make an unsigned call to GetOpenIdToken,\nwhich returns the OpenID token necessary to call STS and retrieve AWS\ncredentials. This call expects the same @Logins@ map as the @GetId@\ncall, as well as the @IdentityID@ originally returned by @GetId@. The\ntoken returned by @GetOpenIdToken@ can be passed to the STS operation\n<http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html AssumeRoleWithWebIdentity>\nto retrieve AWS credentials.\nIf you want to use Amazon Cognito in an Android, iOS, or Unity\napplication, you will probably want to make API calls via the AWS Mobile\nSDK. To learn more, see the\n<http://docs.aws.amazon.com/mobile/index.html AWS Mobile SDK Developer Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CognitoIdentity\" and the <http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-cognito-identity = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-cognito-identity-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-cognito-identity
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }