{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hexpat-lens";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "(c) 2013, Joseph Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Abrahamson";
        homepage = "";
        url = "";
        synopsis = "Lenses for Hexpat.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hexpat-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hexpat
            hsPkgs.lens
          ];
        };
      };
    }