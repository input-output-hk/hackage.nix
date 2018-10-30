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
        name = "marvin";
        version = "0.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "https://marvin.readthedocs.io";
      url = "";
      synopsis = "A modular chat bot";
      description = "A framework for writing portable chat bots. Inspired by hubot. The documentation is on readthedocs: <https://marvin.readthedocs.io>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.text-icu)
          (hsPkgs.vector)
          (hsPkgs.optparse-applicative)
          (hsPkgs.configurator)
          (hsPkgs.bytestring)
          (hsPkgs.async)
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
          (hsPkgs.haskeline)
          (hsPkgs.monad-loops)
          (hsPkgs.mono-traversable)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
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
            (hsPkgs.mono-traversable)
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
            (hsPkgs.mono-traversable)
            (hsPkgs.text)
          ];
        };
      };
    };
  }