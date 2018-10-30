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
      specVersion = "1.14.0";
      identifier = {
        name = "snaplet-influxdb";
        version = "1.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/snaplet-influxdb";
      url = "http://hackage.haskell.org/package/snaplet-influxdb";
      synopsis = "Snap framework snaplet for the InfluxDB library";
      description = "`snaplet-influxdb` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell InfluxDB\npackage.\n\nPlease refer to the README for an example - Cabal descriptions don't\nmake it easy to do so.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.influxdb)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          (hsPkgs.configurator)
          (hsPkgs.network)
          (hsPkgs.mtl)
        ];
      };
    };
  }