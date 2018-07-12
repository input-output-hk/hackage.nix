{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TinyURL";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Reid Barton";
        author = "Reid Barton";
        homepage = "";
        url = "";
        synopsis = "Use TinyURL to compress URLs";
        description = "This package exports a single function that uses\nthe TinyURL API to compress a given URL.";
        buildType = "Simple";
      };
      components = {
        "TinyURL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.network
          ];
        };
      };
    }