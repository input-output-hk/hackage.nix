{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timeless";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rongcuid@outlook.com";
        author = "Rongcui Dong";
        homepage = "https://github.com/carldong/timeless";
        url = "";
        synopsis = "An Arrow based Functional Reactive Programming library";
        description = "Timeless aims to be a comprehensive FRP framework. Version 1 tries to build a system like the book Functional Reactive Programming";
        buildType = "Simple";
      };
      components = {
        "timeless" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.ansi-terminal
            hsPkgs.linear
          ];
        };
      };
    }