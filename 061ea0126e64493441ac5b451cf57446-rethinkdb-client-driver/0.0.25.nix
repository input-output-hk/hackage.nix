{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rethinkdb-client-driver";
        version = "0.0.25";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "https://github.com/wereHamster/rethinkdb-client-driver";
      url = "";
      synopsis = "Client driver for RethinkDB";
      description = "This is an alternative client driver for RethinkDB. It is not complete\nyet, but the basic structure is in place and the driver can make\nsimple queries.\n\nIts main focus is on type safety, which it achieves quite well. It also\nuses the new JSON protocol which should give it a speed boost (and make\nthe driver compatible with GHC 7.8).\n\nNote that the driver is neither thread-safe nor reentrant. If you have\na multi-threaded application, I recommend using 'resource-pool'.";
      buildType = "Simple";
    };
    components = {
      "rethinkdb-client-driver" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.smallcheck)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.rethinkdb-client-driver)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.rethinkdb-client-driver)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
          ];
        };
      };
    };
  }