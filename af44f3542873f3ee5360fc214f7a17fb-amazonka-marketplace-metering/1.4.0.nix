{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-marketplace-metering";
          version = "1.4.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Marketplace Metering SDK.";
        description = "AWS Marketplace Metering Service\nThis reference provides descriptions of the low-level AWS Marketplace\nMetering Service API.\nAWS Marketplace sellers can use this API to submit usage data for custom\nusage dimensions.\n__Submitting Metering Records__\n-   /MeterUsage/- Submits the metering record for a Marketplace product.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.MarketplaceMetering\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-marketplace-metering = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-marketplace-metering-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-marketplace-metering
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