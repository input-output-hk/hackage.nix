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
        name = "ekg-statsd";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "https://github.com/tibbe/ekg-statsd";
      url = "";
      synopsis = "Push metrics to statsd";
      description = "This library lets you push system metrics to a statsd server.";
      buildType = "Simple";
    };
    components = {
      "ekg-statsd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ekg-core)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }