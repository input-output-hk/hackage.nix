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
        name = "jobqueue";
        version = "0.1.4";
      };
      license = "MIT";
      copyright = "GREE, Inc.";
      maintainer = "kiyoshi.ikehara at gree.net";
      author = "Kiyoshi Ikehara";
      homepage = "https://github.com/gree/haskell-jobqueue";
      url = "";
      synopsis = "A job queue library";
      description = "Haskell JobQueue is a library used for building a job scheduler with priority queues.\nThe state of jobs is stored in a backend database such as Apache Zookeeper or other\nhighly reliable message queue systems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.hslogger)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.data-default)
          (hsPkgs.stm)
          (hsPkgs.hzk)
          (hsPkgs.attoparsec)
          (hsPkgs.data-default)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.template-haskell)
          (hsPkgs.text-format)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.regex-posix)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.async)
            (hsPkgs.jobqueue)
            (hsPkgs.data-default)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }