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
        name = "ekg-core";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "https://github.com/tibbe/ekg-core";
      url = "";
      synopsis = "Tracking of system metrics";
      description = "This library lets you defined and track system metrics.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.ghc-prim)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      benchmarks = {
        "counter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ekg-core)
          ];
        };
        "distribution" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ekg-core)
          ];
        };
      };
    };
  }