{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "polar-shader";
          version = "0.1.0.4";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2015 David Farrell";
        maintainer = "David Farrell <shokku.ra@gmail.com>";
        author = "David Farrell";
        homepage = "";
        url = "";
        synopsis = "High-level shader compiler for Polar Game Engine";
        description = "A high-level generic shader compiler library built for the Polar Game Engine.";
        buildType = "Simple";
      };
      components = {
        polar-shader = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.lens
          ];
        };
        tests = {
          test-polar-shader = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.polar-shader
            ];
          };
        };
      };
    }