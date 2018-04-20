{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-emr";
          version = "1.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic MapReduce SDK.";
        description = "Amazon Elastic MapReduce (Amazon EMR) is a web service that makes it\neasy to process large amounts of data efficiently. Amazon EMR uses\nHadoop processing combined with several AWS products to do tasks such as\nweb indexing, data mining, log file analysis, machine learning,\nscientific simulation, and data warehousing.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.EMR\" and the <http://docs.aws.amazon.com/ElasticMapReduce/latest/API/Welcome.html AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-emr = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-emr-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-emr
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