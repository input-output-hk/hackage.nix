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
        name = "amazonka-redshift";
        version = "1.3.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Redshift SDK.";
      description = "Amazon Redshift __Overview__\nThis is an interface reference for Amazon Redshift. It contains\ndocumentation for one of the programming or command line interfaces you\ncan use to manage Amazon Redshift clusters. Note that Amazon Redshift is\nasynchronous, which means that some interfaces may require techniques,\nsuch as polling or asynchronous callback handlers, to determine when a\ncommand has been applied. In this reference, the parameter descriptions\nindicate whether a change is applied immediately, on the next instance\nreboot, or during the next maintenance window. For a summary of the\nAmazon Redshift cluster management interfaces, go to\n<http://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html Using the Amazon Redshift Management Interfaces>.\nAmazon Redshift manages all the work of setting up, operating, and\nscaling a data warehouse: provisioning capacity, monitoring and backing\nup the cluster, and applying patches and upgrades to the Amazon Redshift\nengine. You can focus on using your data to acquire new insights for\nyour business and customers.\nIf you are a first-time user of Amazon Redshift, we recommend that you\nbegin by reading the The\n<http://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html Amazon Redshift Getting Started Guide>\nIf you are a database developer, the\n<http://docs.aws.amazon.com/redshift/latest/dg/welcome.html Amazon Redshift Database Developer Guide>\nexplains how to design, build, query, and maintain the databases that\nmake up your data warehouse.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Redshift\" and the <http://docs.aws.amazon.com/redshift/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-redshift" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-redshift-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-redshift)
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