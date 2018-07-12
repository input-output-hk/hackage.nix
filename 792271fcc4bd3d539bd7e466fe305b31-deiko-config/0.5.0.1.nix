{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "deiko-config";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Yorick Laupa";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/deiko-config";
        url = "";
        synopsis = "Small and typesafe configuration library.";
        description = "Small and typesafe configuration library. The library provides good error messages and comes with a bottom-up typechecker in order to catch more configuration errors.";
        buildType = "Simple";
      };
      components = {
        "deiko-config" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.exceptions
          ];
        };
      };
    }