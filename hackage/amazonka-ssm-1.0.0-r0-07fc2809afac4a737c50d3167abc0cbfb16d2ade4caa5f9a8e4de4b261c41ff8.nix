{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-ssm";
        version = "1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Systems Management Service SDK.";
      description = "Amazon EC2 Simple Systems Manager (SSM) enables you to configure and\nmanage your EC2 instances. You can create a configuration document and\nthen associate it with one or more running instances.\nYou can use a configuration document to automate the following tasks for\nyour Windows instances:\n-   Join an AWS Directory\n-   Install, repair, or uninstall software using an MSI package\n-   Run PowerShell scripts\n-   Configure CloudWatch Logs to monitor applications and systems\nNote that configuration documents are not supported on Linux instances.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SSM\" and the <http://docs.aws.amazon.com/ssm/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-ssm" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-ssm-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-ssm)
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