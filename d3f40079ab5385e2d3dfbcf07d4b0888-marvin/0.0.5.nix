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
        name = "marvin";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "https://marvin.readthedocs.io";
      url = "";
      synopsis = "A modular chat bot";
      description = "The proper documentation is on readthedocs: https://marvin.readthedocs.io";
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
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.mono-traversable)
          (hsPkgs.stm)
          (hsPkgs.marvin-interpolate)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-async)
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