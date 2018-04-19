{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-prometheus-adapter";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/ekg-prometheus-adapter#readme";
        url = "";
        synopsis = "Initial project template from stack";
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