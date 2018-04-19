{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      happstack = false;
      wai = false;
      snap = false;
      gen = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rest-example";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Silk B.V.";
        maintainer = "code@silk.co";
        author = "Silk B.V.";
        homepage = "http://www.github.com/silkapp/rest";
        url = "";
        synopsis = "Example project for rest";
        description = "";
        buildType = "Simple";
      };
      components = {
        rest-example = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.generic-aeson
            hsPkgs.hxt
            hsPkgs.json-schema
            hsPkgs.mtl
            hsPkgs.regular
            hsPkgs.regular-xmlpickler
            hsPkgs.rest-core
            hsPkgs.safe
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          rest-example-happstack = {
            depends  = pkgs.lib.optionals _flags.happstack [
              hsPkgs.base
              hsPkgs.happstack-server
              hsPkgs.mtl
              hsPkgs.rest-core
              hsPkgs.rest-example
              hsPkgs.rest-happstack
              hsPkgs.transformers-compat
            ];
          };
          rest-example-wai = {
            depends  = pkgs.lib.optionals _flags.wai [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.rest-core
              hsPkgs.rest-example
              hsPkgs.rest-wai
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.transformers-compat
            ];
          };
          rest-example-snap = {
            depends  = pkgs.lib.optionals _flags.snap [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.rest-core
              hsPkgs.rest-example
              hsPkgs.rest-snap
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.transformers-compat
            ];
          };
          rest-example-gen = {
            depends  = pkgs.lib.optionals _flags.gen [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.rest-core
              hsPkgs.rest-example
              hsPkgs.rest-gen
              hsPkgs.transformers-compat
            ];
          };
        };
      };
    }