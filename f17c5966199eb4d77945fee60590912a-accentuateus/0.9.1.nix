{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "accentuateus";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Spearhead Development, L.L.C.";
        maintainer = "Michael Schade <michael@spearheaddev.com>";
        author = "Spearhead Development, L.L.C.";
        homepage = "http://accentuate.us/";
        url = "";
        synopsis = "A Haskell implementation of the Accentuate.us API.";
        description = "A Haskell implementation of the Accentuate.us API.";
        buildType = "Simple";
      };
      components = {
        accentuateus = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.json
            hsPkgs.network
          ];
        };
      };
    }