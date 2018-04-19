{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-s3";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Simple Storage Service SDK.";
        description = "Amazon Simple Storage Service is storage for the Internet. Amazon S3 has a\nsimple web services interface that you can use to store and retrieve any\namount of data, at any time, from anywhere on the web. It gives any developer\naccess to the same highly scalable, reliable, fast, inexpensive data storage\ninfrastructure that Amazon uses to run its own global network of web sites.\nThe service aims to maximize benefits of scale and to pass those benefits on\nto developers.\n\n/See:/ <http://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-s3 = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }