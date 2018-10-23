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
        name = "amazonka-cloudsearch";
        version = "1.3.3.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudSearch SDK.";
      description = "Amazon CloudSearch Configuration Service\nYou use the Amazon CloudSearch configuration service to create,\nconfigure, and manage search domains. Configuration service requests are\nsubmitted using the AWS Query protocol. AWS Query requests are HTTP or\nHTTPS requests submitted via HTTP GET or POST with a query parameter\nnamed Action.\nThe endpoint for configuration service requests is region-specific:\ncloudsearch./region/.amazonaws.com. For example,\ncloudsearch.us-east-1.amazonaws.com. For a current list of supported\nregions and endpoints, see\n<http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region Regions and Endpoints>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudSearch\" and the <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/what-is-cloudsearch.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-cloudsearch" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-cloudsearch-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cloudsearch)
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