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
      specVersion = "1.10";
      identifier = {
        name = "cqrs-example";
        version = "0.8.0";
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
            (hsPkgs.base64-bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.cqrs)
            (hsPkgs.cqrs-sqlite3)
            (hsPkgs.data-default)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.http-types)
            (hsPkgs.old-locale)
            (hsPkgs.safecopy)
            (hsPkgs.strict-concurrency)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-eventsource)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "cqrs-example-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cqrs)
            (hsPkgs.cqrs-sqlite3)
            (hsPkgs.data-default)
            (hsPkgs.direct-sqlite)
            (hsPkgs.safecopy)
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