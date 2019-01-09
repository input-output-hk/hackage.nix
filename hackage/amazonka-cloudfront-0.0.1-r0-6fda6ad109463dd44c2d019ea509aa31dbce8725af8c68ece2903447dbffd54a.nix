{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-cloudfront"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudFront SDK.";
      description = "Amazon CloudFront is a web service that speeds up distribution of your\nstatic and dynamic web content, for example, .html, .css, .php, image,\nand media files, to end users. CloudFront delivers your content through\na worldwide network of edge locations. When an end user requests\ncontent that you're serving with CloudFront, the user is routed to the\nedge location that provides the lowest latency, so content is delivered\nwith the best possible performance. If the content is already in that\nedge location, CloudFront delivers it immediately. If the content is\nnot currently in that edge location, CloudFront retrieves it from an\nAmazon S3 bucket or an HTTP server (for example, a web server) that you\nhave identified as the source for the definitive version of your\ncontent.\n\n/See:/ <http://docs.aws.amazon.com/AmazonCloudFront/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      };
    }