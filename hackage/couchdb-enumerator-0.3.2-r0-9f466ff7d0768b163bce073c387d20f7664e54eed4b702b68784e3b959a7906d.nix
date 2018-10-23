{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "couchdb-enumerator";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Lenz <lenz@math.uic.edu>";
      author = "John Lenz <lenz@math.uic.edu>";
      homepage = "http://bitbucket.org/wuzzeb/couchdb-enumerator";
      url = "";
      synopsis = "Couch DB client library using http-enumerator and aeson";
      description = "This package is a thin wrapper around http-enumerator to access a Couch DB Database,\nusing the aeson package to parse and encode JSON data.  http-enumerator, aeson, and\nattoparsec fit togther so well that this package is mostly just a direct combination\nof these packages.  The single additional feature in this package is an attoparsec parser\nfor views, which allows constant memory processing of view returns.";
      buildType = "Simple";
    };
    components = {
      "couchdb-enumerator" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
          (hsPkgs.http-types)
          (hsPkgs.http-enumerator)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "test-couch" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-enumerator)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.enumerator)
            (hsPkgs.http-types)
            (hsPkgs.http-enumerator)
            (hsPkgs.monad-control)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }