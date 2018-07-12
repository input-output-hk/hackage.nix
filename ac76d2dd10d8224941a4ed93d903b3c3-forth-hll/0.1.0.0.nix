{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "forth-hll";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "tikhon@jelv.is";
        author = "Tikhon Jelvis <tikhon@jelv.is>";
        homepage = "";
        url = "";
        synopsis = "A simple eDSL for generating arrayForth code.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "forth-hll" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array-forth
            hsPkgs.free
            hsPkgs.mtl
          ];
        };
      };
    }