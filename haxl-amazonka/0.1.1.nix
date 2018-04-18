{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haxl-amazonka";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tvh@tvholtz.de";
        author = "Timo von Holtz";
        homepage = "http://github.com/tvh/haxl-amazonka#readme";
        url = "";
        synopsis = "Haxl data source for accessing AWS services through amazonka.";
        description = "Haxl data source for accessing AWS services through amazonka.";
        buildType = "Simple";
      };
      components = {
        haxl-amazonka = {
          depends  = [
            hsPkgs.base
            hsPkgs.haxl
            hsPkgs.amazonka
            hsPkgs.amazonka-core
            hsPkgs.async
            hsPkgs.transformers
            hsPkgs.hashable
            hsPkgs.conduit
          ];
        };
      };
    }