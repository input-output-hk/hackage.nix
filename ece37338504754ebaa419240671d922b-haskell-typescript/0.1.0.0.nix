{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-typescript";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2013 David Johnson";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "Simple TypeScript API";
        description = "Simple Bindings to the TypeScript compiler";
        buildType = "Simple";
      };
      components = {
        haskell-typescript = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
      };
    }