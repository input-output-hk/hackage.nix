{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "aws-sdk";
        version = "0.9.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "AWS SDK for Haskell Developers";
      maintainer = "Yusuke Nomura <yunomu@gmail.com>";
      author = "Yusuke Nomura <yunomu@gmail.com>\n, Seizan Shimazaki <seizans@gmail.com>\n, Daisuke Matsumoto <dai@daimatz.net>\n, amkkun <amkkun@gmail.com>\n, eagletmt <eagletmt@gmail.com>\n, HATATANI Shinta <gamaguchi@gmail.com>";
      homepage = "http://worksap-ate.github.com/aws-sdk";
      url = "";
      synopsis = "AWS SDK for Haskell";
      description = "AWS (Amazon Web Services) sdk for Haskell.\n\nThis library closesly follows the official sdk.\nTo find more documentation, you can lookup functions in the official sdk docs for other languages:\n<http://docs.amazonwebservices.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/ec2/model/DescribeInstancesRequest.html>";
      buildType = "Simple";
    };
    components = {
      "aws-sdk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.SHA)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.http-conduit)
          (hsPkgs.data-default)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.monad-control)
          (hsPkgs.safe)
          (hsPkgs.simple-config)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.strptime)
          (hsPkgs.template-haskell)
          (hsPkgs.parallel)
          (hsPkgs.iproute)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aws-sdk)
            (hsPkgs.conduit)
            (hsPkgs.text)
            (hsPkgs.monad-control)
            (hsPkgs.transformers)
            (hsPkgs.http-conduit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.lifted-base)
            (hsPkgs.iproute)
            (hsPkgs.tls)
          ];
        };
      };
    };
  }