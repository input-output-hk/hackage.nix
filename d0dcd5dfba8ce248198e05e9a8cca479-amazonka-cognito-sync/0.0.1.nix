{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cognito-sync";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Cognito Sync SDK.";
        description = "Amazon Cognito Sync provides an AWS service and client library that\nenable cross-device syncing of application-related user data.\nHigh-level client libraries are available for both iOS and Android. You\ncan use these libraries to persist data locally so that it's available\neven if the device is offline. Developer credentials don't need to be\nstored on the mobile device to access the service. You can use Amazon\nCognito to obtain a normalized user ID and credentials. User data is\npersisted in a dataset that can store up to 1 MB of key-value pairs,\nand you can have up to 20 datasets per user identity.\n\n/See:/ <http://docs.aws.amazon.com/cognitosync/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-cognito-sync = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }