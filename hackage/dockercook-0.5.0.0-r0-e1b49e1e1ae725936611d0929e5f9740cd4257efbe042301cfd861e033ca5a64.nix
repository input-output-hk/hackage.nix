{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "dockercook";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014-2015 factis research GmbH";
      maintainer = "Alexander Thiemann <thiemann@cp-med.com>";
      author = "Alexander Thiemann <thiemann@cp-med.com>";
      homepage = "https://github.com/factisresearch/dockercook";
      url = "";
      synopsis = "A build tool for multiple docker image layers";
      description = "Build and manage multiple docker image layers to speed up deployment";
      buildType = "Simple";
    };
    components = {
      "dockercook" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hslogger)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.process)
          (hsPkgs.regex-compat)
          (hsPkgs.resourcet)
          (hsPkgs.resourcet)
          (hsPkgs.retry)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.system-filepath)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "dockercook" = {
          depends  = [
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.dockercook)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "dockercook-test" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.dockercook)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }