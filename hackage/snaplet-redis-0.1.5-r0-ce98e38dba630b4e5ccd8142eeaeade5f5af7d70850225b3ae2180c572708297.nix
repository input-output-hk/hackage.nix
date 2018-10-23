{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snaplet-redis";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snaplet-redis#readme";
      url = "";
      synopsis = "Redis support for Snap Framework";
      description = "This package provides a snaplet which exposes interface to Redis in-memory key-value storage as implemented by Hedis library. Inline documentation contains usage examples.";
      buildType = "Simple";
    };
    components = {
      "snaplet-redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.clientsession)
          (hsPkgs.configurator)
          (hsPkgs.lens)
          (hsPkgs.hedis)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.hedis)
            (hsPkgs.heist)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.snaplet-redis)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.xmlhtml)
          ];
        };
      };
    };
  }