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
        name = "amazonka-directconnect";
        version = "1.4.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Direct Connect SDK.";
      description = "AWS Direct Connect links your internal network to an AWS Direct Connect\nlocation over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic\ncable. One end of the cable is connected to your router, the other to an\nAWS Direct Connect router. With this connection in place, you can create\nvirtual interfaces directly to the AWS cloud (for example, to Amazon\nElastic Compute Cloud (Amazon EC2) and Amazon Simple Storage Service\n(Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC), bypassing\nInternet service providers in your network path. An AWS Direct Connect\nlocation provides access to AWS in the region it is associated with, as\nwell as access to other US regions. For example, you can provision a\nsingle connection to any AWS Direct Connect location in the US and use\nit to access public AWS services in all US Regions and AWS GovCloud\n(US).\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.DirectConnect\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-directconnect" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-directconnect-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-directconnect)
            (hsPkgs.base)
            (hsPkgs.bytestring)
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