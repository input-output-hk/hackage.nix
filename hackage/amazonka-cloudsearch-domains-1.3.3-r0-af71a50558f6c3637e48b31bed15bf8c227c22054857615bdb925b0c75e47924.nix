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
        name = "amazonka-cloudsearch-domains";
        version = "1.3.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudSearch Domain SDK.";
      description = "You use the AmazonCloudSearch2013 API to upload documents to a search\ndomain and search those documents.\nThe endpoints for submitting @UploadDocuments@, @Search@, and @Suggest@\nrequests are domain-specific. To get the endpoints for your domain, use\nthe Amazon CloudSearch configuration service @DescribeDomains@ action.\nThe domain endpoints are also displayed on the domain dashboard in the\nAmazon CloudSearch console. You submit suggest requests to the search\nendpoint.\nFor more information, see the\n<http://docs.aws.amazon.com/cloudsearch/latest/developerguide Amazon CloudSearch Developer Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudSearchDomains\" and the <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/what-is-cloudsearch.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-cloudsearch-domains" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-cloudsearch-domains-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cloudsearch-domains)
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