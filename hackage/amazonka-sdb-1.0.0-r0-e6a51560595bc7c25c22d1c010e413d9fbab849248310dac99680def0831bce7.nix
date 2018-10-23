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
        name = "amazonka-sdb";
        version = "1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon SimpleDB SDK.";
      description = "Amazon SimpleDB is a web service providing the core database functions\nof data indexing and querying in the cloud. By offloading the time and\neffort associated with building and operating a web-scale database,\nSimpleDB provides developers the freedom to focus on application\ndevelopment.\nA traditional, clustered relational database requires a sizable upfront\ncapital outlay, is complex to design, and often requires extensive and\nrepetitive database administration. Amazon SimpleDB is dramatically\nsimpler, requiring no schema, automatically indexing your data and\nproviding a simple API for storage and access. This approach eliminates\nthe administrative burden of data modeling, index maintenance, and\nperformance tuning. Developers gain access to this functionality within\nAmazon\\'s proven computing environment, are able to scale instantly, and\npay only for what they use.\nVisit <http://aws.amazon.com/simpledb/> for more information.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SDB\" and the <http://docs.aws.amazon.com/AmazonSimpleDB/latest/DeveloperGuide/SDB_API.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-sdb" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-sdb-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-sdb)
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