{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "detour-via-sci";
          version = "1.0.0";
        };
        license = "MPL-2.0";
        copyright = "© 2017-2018 Phil de Joux, © 2017-2018 Block Scope Limited";
        maintainer = "phil.dejoux@blockscope.com";
        author = "Phil de Joux";
        homepage = "https://github.com/blockscope/flare-timing/tree/master/detour-via-sci#readme";
        url = "";
        synopsis = "JSON and CSV encoding for rationals as decimal point numbers.";
        description = "Lossy JSON and CSV encoding and decoding for newtype rationals via scientific with fixed decimal places.";
        buildType = "Simple";
      };
      components = {
        "detour-via-sci" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.cassava
            hsPkgs.newtype
            hsPkgs.scientific
            hsPkgs.siggy-chardust
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.cassava
              hsPkgs.doctest
              hsPkgs.newtype
              hsPkgs.scientific
              hsPkgs.siggy-chardust
              hsPkgs.template-haskell
            ];
          };
          "hlint" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.cassava
              hsPkgs.hlint
              hsPkgs.newtype
              hsPkgs.scientific
              hsPkgs.siggy-chardust
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }