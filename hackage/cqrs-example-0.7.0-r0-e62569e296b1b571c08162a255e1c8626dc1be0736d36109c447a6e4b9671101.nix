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
        name = "cqrs-example";
        version = "0.7.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "spam@scientician.net";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Example for cqrs package";
      description = "Example for cqrs package";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cqrs-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.cqrs)
            (hsPkgs.cqrs-sqlite3)
            (hsPkgs.data-default)
            (hsPkgs.enumerator)
            (hsPkgs.happstack-lite)
            (hsPkgs.happstack-server)
            (hsPkgs.happstack-util)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "cqrs-example-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cqrs)
            (hsPkgs.cqrs-sqlite3)
            (hsPkgs.data-default)
            (hsPkgs.direct-sqlite)
            (hsPkgs.enumerator)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }