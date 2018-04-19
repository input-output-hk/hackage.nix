{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-prometheus-adapter";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "2016 Alfredo Di Napoli";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "https://github.com/adinapoli/ekg-prometheus-adapter#readme";
        url = "";
        synopsis = "Easily expose your EKG metrics to Prometheus";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ekg-prometheus-adapter = {
          depends  = [
            hsPkgs.base
            hsPkgs.prometheus
            hsPkgs.ekg-core
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.microlens-th
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ekg-prometheus-adapter
            ];
          };
        };
      };
    }