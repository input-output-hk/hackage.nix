{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "text-loc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/text-loc";
        url = "";
        synopsis = "Line-column locations within a text.";
        description = "This package provides data types that describe line-column locations\nwithin a text.";
        buildType = "Simple";
      };
      components = {
        text-loc = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
          ];
        };
      };
    }