{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Lambdaya";
          version = "0.1.1.0";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "luka.rahne@gmail.com";
        author = "Luka Rahne";
        homepage = "";
        url = "";
        synopsis = "Library for RedPitaya";
        description = "Native library for RedPitaya that runs on RedPitaya.";
        buildType = "Simple";
      };
      components = {
        "Lambdaya" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.unix
          ];
        };
      };
    }