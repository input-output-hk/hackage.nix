{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-sns";
        version = "1.3.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Notification Service SDK.";
      description = "Amazon Simple Notification Service\nAmazon Simple Notification Service (Amazon SNS) is a web service that\nenables you to build distributed web-enabled applications. Applications\ncan use Amazon SNS to easily push real-time notification messages to\ninterested subscribers over multiple delivery protocols. For more\ninformation about this product see\n<http://aws.amazon.com/sns/ http:\\/\\/aws.amazon.com\\/sns>. For detailed\ninformation about Amazon SNS features and their associated API calls,\nsee the\n<http://docs.aws.amazon.com/sns/latest/dg/ Amazon SNS Developer Guide>.\nWe also provide SDKs that enable you to access Amazon SNS from your\npreferred programming language. The SDKs contain functionality that\nautomatically takes care of tasks such as: cryptographically signing\nyour service requests, retrying requests, and handling error responses.\nFor a list of available SDKs, go to\n<http://aws.amazon.com/tools/ Tools for Amazon Web Services>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SNS\" and the <http://docs.aws.amazon.com/sns/latest/api/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-sns" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-sns-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-sns)
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