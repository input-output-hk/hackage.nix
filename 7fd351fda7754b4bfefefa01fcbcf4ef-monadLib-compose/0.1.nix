{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monadLib-compose";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "";
        url = "";
        synopsis = "Arrow-like monad composition for monadLib.";
        description = "Arrow-like monad composition for monadLib.";
        buildType = "Simple";
      };
      components = {
        "monadLib-compose" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monadLib
          ];
        };
      };
    }