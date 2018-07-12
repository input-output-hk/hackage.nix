{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-purescript";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Robert Klotzner";
        maintainer = "robert Dot klotzner A T gmx Dot at";
        author = "Robert Klotzner";
        homepage = "https://github.com/eskimor/servant-purescript#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "servant-purescript" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mainland-pretty
            hsPkgs.purescript-bridge
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.servant-subscriber
            hsPkgs.text
          ];
        };
        tests = {
          "servant-purescript-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.mainland-pretty
              hsPkgs.lens
              hsPkgs.purescript-bridge
              hsPkgs.servant
              hsPkgs.servant-foreign
              hsPkgs.servant-purescript
              hsPkgs.servant-subscriber
              hsPkgs.text
            ];
          };
        };
      };
    }