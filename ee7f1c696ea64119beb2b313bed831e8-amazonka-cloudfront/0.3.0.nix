{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cloudfront";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon CloudFront SDK.";
        description = "Amazon CloudFront is a web service that speeds up distribution of your static\nand dynamic web content, for example, .html, .css, .php, image, and media\nfiles, to end users. CloudFront delivers your content through a worldwide\nnetwork of edge locations. When an end user requests content that you're\nserving with CloudFront, the user is routed to the edge location that\nprovides the lowest latency, so content is delivered with the best possible\nperformance. If the content is already in that edge location, CloudFront\ndelivers it immediately. If the content is not currently in that edge\nlocation, CloudFront retrieves it from an Amazon S3 bucket or an HTTP server\n(for example, a web server) that you have identified as the source for the\ndefinitive version of your content.\n\n/See:/ <http://docs.aws.amazon.com/AmazonCloudFront/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-cloudfront = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }