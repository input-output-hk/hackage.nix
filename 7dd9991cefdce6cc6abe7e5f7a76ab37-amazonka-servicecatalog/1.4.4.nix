{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-servicecatalog";
          version = "1.4.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Service Catalog SDK.";
        description = "AWS Service Catalog\n__Overview__\n<https://aws.amazon.com/servicecatalog/ AWS Service Catalog> allows organizations to create and manage catalogs of IT services that are approved for use on AWS. This documentation provides reference material for the AWS Service Catalog end user API. To get the most out of this documentation, you need to be familiar with the terminology discussed in <http://docs.aws.amazon.com/servicecatalog/latest/userguide/what-is_concepts.html AWS Service Catalog Concepts>.\n/Additional Resources/\n-   <http://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html AWS Service Catalog Administrator Guide>\n-   <http://docs.aws.amazon.com/servicecatalog/latest/userguide/introduction.html AWS Service Catalog User Guide>\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.ServiceCatalog\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-servicecatalog = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-servicecatalog-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-servicecatalog
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