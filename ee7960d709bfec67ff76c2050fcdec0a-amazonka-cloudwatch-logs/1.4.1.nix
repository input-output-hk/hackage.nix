{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cloudwatch-logs";
          version = "1.4.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon CloudWatch Logs SDK.";
        description = "Amazon CloudWatch Logs API Reference\nYou can use Amazon CloudWatch Logs to monitor, store, and access your\nlog files from Amazon Elastic Compute Cloud (Amazon EC2) instances,\nAmazon CloudTrail, or other sources. You can then retrieve the\nassociated log data from CloudWatch Logs using the Amazon CloudWatch\nconsole, the CloudWatch Logs commands in the AWS CLI, the CloudWatch\nLogs API, or the CloudWatch Logs SDK.\nYou can use CloudWatch Logs to:\n-   __Monitor Logs from Amazon EC2 Instances in Real-time__: You can use\nCloudWatch Logs to monitor applications and systems using log data.\nFor example, CloudWatch Logs can track the number of errors that\noccur in your application logs and send you a notification whenever\nthe rate of errors exceeds a threshold you specify. CloudWatch Logs\nuses your log data for monitoring; so, no code changes are required.\nFor example, you can monitor application logs for specific literal\nterms (such as \\\"NullReferenceException\\\") or count the number of\noccurrences of a literal term at a particular position in log data\n(such as \\\"404\\\" status codes in an Apache access log). When the\nterm you are searching for is found, CloudWatch Logs reports the\ndata to a Amazon CloudWatch metric that you specify.\n-   __Monitor Amazon CloudTrail Logged Events__: You can create alarms\nin Amazon CloudWatch and receive notifications of particular API\nactivity as captured by CloudTrail and use the notification to\nperform troubleshooting.\n-   __Archive Log Data__: You can use CloudWatch Logs to store your log\ndata in highly durable storage. You can change the log retention\nsetting so that any log events older than this setting are\nautomatically deleted. The CloudWatch Logs agent makes it easy to\nquickly send both rotated and non-rotated log data off of a host and\ninto the log service. You can then access the raw log data when you\nneed it.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudWatchLogs\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-cloudwatch-logs = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-cloudwatch-logs-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-cloudwatch-logs
              hsPkgs.base
              hsPkgs.bytestring
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