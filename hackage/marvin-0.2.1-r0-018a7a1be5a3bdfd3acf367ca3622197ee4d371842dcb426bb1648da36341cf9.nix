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
        name = "marvin";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2016, 2017 Justus Adam";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "https://marvin.readthedocs.io";
      url = "";
      synopsis = "A framework for modular, portable chat bots.";
      description = "A framework for writing portable chat bots. Inspired by hubot.\n\nThe best way to get started with this library is with the documentation on readthedocs: <https://marvin.readthedocs.io>";
      buildType = "Simple";
    };
    components = {
      "marvin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.text-icu)
          (hsPkgs.vector)
          (hsPkgs.configurator)
          (hsPkgs.bytestring)
          (hsPkgs.monad-logger)
          (hsPkgs.websockets)
          (hsPkgs.network-uri)
          (hsPkgs.wuss)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.stm)
          (hsPkgs.marvin-interpolate)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-async)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.haskeline)
          (hsPkgs.monad-loops)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.deepseq)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.optparse-applicative)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.irc-conduit)
        ];
      };
      exes = {
        "marvin-pp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mustache)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.marvin)
            (hsPkgs.configurator)
            (hsPkgs.optparse-applicative)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
          ];
        };
        "marvin-init" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mustache)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "marvin-unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.marvin)
            (hsPkgs.hspec)
          ];
        };
        "marvin-integration-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.marvin)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.monad-loops)
            (hsPkgs.extra)
            (hsPkgs.yaml)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.text)
          ];
        };
      };
    };
  }