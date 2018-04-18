{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "mix-arrows";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "miguelimo38@yandex.ru";
        author = "Miguel Mitrofanov";
        homepage = "";
        url = "";
        synopsis = "Mixing effects of one arrow into another one";
        description = "This package allows one to mix effects of two arrows into a single one, and get them back afterwards.\n\nIt was inspired by Wolfgang Jeltsch's lax package.";
        buildType = "Simple";
      };
      components = {
        mix-arrows = {
          depends  = [ hsPkgs.base ];
        };
      };
    }