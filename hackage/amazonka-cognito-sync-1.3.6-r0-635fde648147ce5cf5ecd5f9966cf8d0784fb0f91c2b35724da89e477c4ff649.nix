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
        name = "amazonka-cognito-sync";
        version = "1.3.6";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Cognito Sync SDK.";
      description = "Amazon Cognito Sync\nAmazon Cognito Sync provides an AWS service and client library that\nenable cross-device syncing of application-related user data. High-level\nclient libraries are available for both iOS and Android. You can use\nthese libraries to persist data locally so that it\\'s available even if\nthe device is offline. Developer credentials don\\'t need to be stored on\nthe mobile device to access the service. You can use Amazon Cognito to\nobtain a normalized user ID and credentials. User data is persisted in a\ndataset that can store up to 1 MB of key-value pairs, and you can have\nup to 20 datasets per user identity.\nWith Amazon Cognito Sync, the data stored for each identity is\naccessible only to credentials assigned to that identity. In order to\nuse the Cognito Sync service, you need to make API calls using\ncredentials retrieved with\n<http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html Amazon Cognito Identity service>.\nIf you want to use Cognito Sync in an Android or iOS application, you\nwill probably want to make API calls via the AWS Mobile SDK. To learn\nmore, see the\n<http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html Developer Guide for Android>\nand the\n<http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html Developer Guide for iOS>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CognitoSync\" and the <http://docs.aws.amazon.com/cognitosync/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-cognito-sync-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cognito-sync)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
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