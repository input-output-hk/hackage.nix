{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "batchd";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "Ilya Portnov";
        homepage = "https://github.com/portnov/batchd";
        url = "";
        synopsis = "Batch processing toolset for Linux / Unix";
        description = "The batchd is a toolset for batch processing for Linux / Unix operating systems.\nIt enables one to:\n\n* Create and manage queues of tasks (batch jobs);\n\n* Specify time periods (schedules) when jobs from each queue can be executed;\n\n* Run batch jobs on localhost or on several machines one-by-one or in parallel.\n\nThe main concern of batchd are batch jobs, which are\nmeant to take some time to execute (minutes to days) and\nconsume a lot of computational power (probably whole\npower of the machine). Examples of such jobs are:\n\n* Scientific calculations (physical modelling or numeric\nexperiments on differential equations, for example);\n\n* Building large software products from source code;\n\n* Running integration test suites;\n\n* Rendering complex 3D scenes or animations;\n\n* Executing complex reports on large databases;\n\n* Backups;\n\n* and so on.\n\nFor more complete description, please refer to\n<https://github.com/portnov/batchd/blob/master/README.md README>\nand <https://github.com/portnov/batchd/wiki Wiki> on GitHub.";
        buildType = "Simple";
      };
      components = {
        exes = {
          batchd = {
            depends  = [
              hsPkgs.base
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-postgresql
              hsPkgs.persistent-template
              hsPkgs.esqueleto
              hsPkgs.monad-logger
              hsPkgs.monad-logger-syslog
              hsPkgs.data-default
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.dates
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.Glob
              hsPkgs.time
              hsPkgs.syb
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.resourcet
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-cors
              hsPkgs.wai-middleware-static
              hsPkgs.vault
              hsPkgs.scotty
              hsPkgs.warp
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.template
              hsPkgs.process
              hsPkgs.libssh2
              hsPkgs.cryptonite
              hsPkgs.template-haskell
              hsPkgs.th-lift
            ];
          };
          batchd-admin = {
            depends  = [
              hsPkgs.base
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-postgresql
              hsPkgs.persistent-template
              hsPkgs.esqueleto
              hsPkgs.monad-logger
              hsPkgs.monad-logger-syslog
              hsPkgs.data-default
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.dates
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.Glob
              hsPkgs.time
              hsPkgs.syb
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.resourcet
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.vault
              hsPkgs.scotty
              hsPkgs.warp
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.template
              hsPkgs.process
              hsPkgs.libssh2
              hsPkgs.cryptonite
              hsPkgs.template-haskell
              hsPkgs.th-lift
            ];
          };
          batch = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.dates
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.syb
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.monad-logger
              hsPkgs.readline
              hsPkgs.x509-store
              hsPkgs.tls
              hsPkgs.connection
              hsPkgs.http-types
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.persistent
              hsPkgs.persistent-template
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-postgresql
              hsPkgs.esqueleto
              hsPkgs.monad-logger
              hsPkgs.monad-logger-syslog
              hsPkgs.resourcet
              hsPkgs.unix
              hsPkgs.scotty
            ];
          };
        };
      };
    }