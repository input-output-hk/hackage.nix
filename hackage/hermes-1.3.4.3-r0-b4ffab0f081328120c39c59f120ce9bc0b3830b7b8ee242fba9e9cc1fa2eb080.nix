{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      hpc = false;
      library-only = false;
      release = false;
      bench = false;
      prof = false;
      threadscope = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hermes";
        version = "1.3.4.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "alfredo@irisconnect.co.uk";
      author = "Chris Dornan & Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "";
      description = "IRIS Connect Transcoding Server";
      buildType = "Simple";
    };
    components = {
      "hermes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.cryptohash)
          (hsPkgs.rncryptor)
          (hsPkgs.amqp)
          (hsPkgs.atlas)
          (hsPkgs.ansi-terminal)
          (hsPkgs.api-tools)
          (hsPkgs.aeson)
          (hsPkgs.annotated-wl-pprint)
          (hsPkgs.async)
          (hsPkgs.auto-update)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.configurator)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.exceptions)
          (hsPkgs.io-streams)
          (hsPkgs.QuickCheck)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.ixset-typed)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.resource-pool-catchio)
          (hsPkgs.retry)
          (hsPkgs.safe)
          (hsPkgs.safecopy)
          (hsPkgs.snap-core)
          (hsPkgs.snap)
          (hsPkgs.shelly)
          (hsPkgs.string-conv)
          (hsPkgs.stm)
          (hsPkgs.threads-supervisor)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.postgresql-simple)
          (hsPkgs.generics-sop)
          (hsPkgs.postgresql-simple-sop)
          (hsPkgs.random)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.optparse-applicative)
          (hsPkgs.old-locale)
          (hsPkgs.data-default)
          (hsPkgs.text-format)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "hermes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.atlas)
            (hsPkgs.shelly)
            (hsPkgs.data-default)
            (hsPkgs.configurator)
            (hsPkgs.hackage-uploader)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.text)
            (hsPkgs.hermes)
          ];
        };
        "hermes-docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hastache)
            (hsPkgs.shelly)
            (hsPkgs.configurator)
            (hsPkgs.unordered-containers)
            (hsPkgs.network-uri)
            (hsPkgs.string-conv)
            (hsPkgs.hermes)
            (hsPkgs.text)
          ];
        };
        "hermes-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.amqp)
            (hsPkgs.atlas)
            (hsPkgs.async)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.auto-update)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.cereal)
            (hsPkgs.data-default)
            (hsPkgs.lens)
            (hsPkgs.exceptions)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.statsd-datadog)
            (hsPkgs.unordered-containers)
            (hsPkgs.hslogger)
            (hsPkgs.http-client)
            (hsPkgs.shelly)
            (hsPkgs.snap-core)
            (hsPkgs.snap)
            (hsPkgs.snap-cors)
            (hsPkgs.snap-server)
            (hsPkgs.snap-core)
            (hsPkgs.snap-loader-static)
            (hsPkgs.snaplet-postgresql-simple)
            (hsPkgs.stm)
            (hsPkgs.string-conv)
            (hsPkgs.postgresql-simple)
            (hsPkgs.resource-pool-catchio)
            (hsPkgs.http-conduit)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.threads-supervisor)
            (hsPkgs.transformers)
            (hsPkgs.old-locale)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.hermes)
            (hsPkgs.unix)
          ];
        };
        "hermes-progress" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.atlas)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.configurator)
            (hsPkgs.hermes)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.io-streams)
          ];
        };
        "hermes-tests" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.amqp)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.atlas)
            (hsPkgs.aeson)
            (hsPkgs.api-tools)
            (hsPkgs.cereal)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.case-insensitive)
            (hsPkgs.mtl)
            (hsPkgs.configurator)
            (hsPkgs.data-default)
            (hsPkgs.postgresql-simple)
            (hsPkgs.shelly)
            (hsPkgs.stm)
            (hsPkgs.snap)
            (hsPkgs.QuickCheck)
            (hsPkgs.unordered-containers)
            (hsPkgs.statsd-datadog)
            (hsPkgs.ekg-core)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.threads-supervisor)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-rerun)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.hermes)
          ];
        };
        "hermes-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shelly)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.optparse-applicative)
            (hsPkgs.criterion)
            (hsPkgs.hermes)
          ];
        };
      };
    };
  }