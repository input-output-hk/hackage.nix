{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-grammar";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "2017 Owens Murray LLC";
        maintainer = "rowens@owensmurray.com";
        author = "Rick Owens";
        homepage = "https://github.com/owensmurray/http-grammar";
        url = "";
        synopsis = "Attoparsec-based parsers for the RFC-2616 HTTP grammar rules.";
        description = "The purpose of this package is to provide a faithful\nimplementation of the RFC-2616 HTTP grammar rules without\nconcession to popular deviations that \"happen in the\nwild\".\nThe implementation is far from complete. My development\nplan for this package is to add various productions from\ntime to time as I need them in other work I'm doing.\nContributions are most welcome and highly encouraged.";
        buildType = "Simple";
      };
      components = {
        http-grammar = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.base
          ];
        };
      };
    }