{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "toktok";
          version = "0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Grégoire Détrez <gdetrez@crans.org>";
        author = "Grégoire Détrez <gdetrez@crans.org>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "An ambiguous tokenizer for GF";
        buildType = "Simple";
      };
      components = {
        toktok = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haskell98
          ];
        };
        exes = {
          toktok-benchmark = {
            depends  = [
              hsPkgs.criterion
              hsPkgs.progression
              hsPkgs.filepath
            ];
          };
          toktok-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
          toktok = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.gf
              hsPkgs.iconv
            ];
          };
          gf-extract-lexicon = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }