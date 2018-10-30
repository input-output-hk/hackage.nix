{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "couchdb-conduit";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
      author = "Alexander Dorofeev <aka.spin@gmail.com>, John Lenz <lenz@math.uic.edu>";
      homepage = "https://github.com/akaspin/couchdb-conduit";
      url = "";
      synopsis = "Couch DB client library using http-conduit and aeson";
      description = "This package is a thin wrapper around http-conduit to access a Couch DB Database,\nusing the aeson package to parse and encode JSON data. http-conduit, aeson, and\nattoparsec fit togther so well that this package is mostly just a direct combination\nof these packages.  The single additional feature in this package is an attoparsec parser\nfor views, which allows constant memory processing of view returns.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.syb)
          (hsPkgs.data-default)
          (hsPkgs.blaze-builder)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.couchdb-conduit)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.monad-control)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.utf8-string)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.syb)
            (hsPkgs.data-default)
            (hsPkgs.blaze-builder)
          ];
        };
      };
    };
  }