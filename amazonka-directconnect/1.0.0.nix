{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-directconnect";
          version = "1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Direct Connect SDK.";
        description = "AWS Direct Connect makes it easy to establish a dedicated network\nconnection from your premises to Amazon Web Services (AWS). Using AWS\nDirect Connect, you can establish private connectivity between AWS and\nyour data center, office, or colocation environment, which in many cases\ncan reduce your network costs, increase bandwidth throughput, and\nprovide a more consistent network experience than Internet-based\nconnections.\nThe AWS Direct Connect API Reference provides descriptions, syntax, and\nusage examples for each of the actions and data types for AWS Direct\nConnect. Use the following links to get started using the /AWS Direct\nConnect API Reference/:\n-   <http://docs.aws.amazon.com/directconnect/latest/APIReference/API_Operations.html Actions>:\nAn alphabetical list of all AWS Direct Connect actions.\n-   <http://docs.aws.amazon.com/directconnect/latest/APIReference/API_Types.html Data Types>:\nAn alphabetical list of all AWS Direct Connect data types.\n-   <http://docs.aws.amazon.com/directconnect/latest/APIReference/CommonParameters.html Common Query Parameters>:\nParameters that all Query actions can use.\n-   <http://docs.aws.amazon.com/directconnect/latest/APIReference/CommonErrors.html Common Errors>:\nClient and server errors that all actions can return.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.DirectConnect\" and the <http://docs.aws.amazon.com/directconnect/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-directconnect = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-directconnect-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-directconnect
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
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