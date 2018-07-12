{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "text-lips";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/text-lips";
        url = "";
        synopsis = "Monadic parsing combinator library with attention to locations";
        description = "Monadic parsing combinator library with attention to locations.";
        buildType = "Simple";
      };
      components = {
        "text-lips" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.text-loc
            hsPkgs.containers
            hsPkgs.parsers
            hsPkgs.transformers
          ];
        };
      };
    }