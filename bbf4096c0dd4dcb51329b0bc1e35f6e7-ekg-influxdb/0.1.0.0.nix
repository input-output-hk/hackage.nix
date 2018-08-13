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
        name = "ekg-influxdb";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "moritz.angermann@gmail.com";
      author = "Moritz Angermann";
      homepage = "https://github.com/angerman/ekg-influxdb";
      url = "";
      synopsis = "An EKG backend to send statistics to influxdb";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ekg-influxdb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ekg-core)
          (hsPkgs.libinfluxdb)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.clock)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
    };
  }