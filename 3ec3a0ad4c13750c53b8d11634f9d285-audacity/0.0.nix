{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "audacity";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "http://code.haskell.org/~thielema/audacity";
        url = "";
        synopsis = "Interchange with the Audacity sound signal editor";
        description = "This package provides functions\nfor interchange with the Audacity sound signal editor.\nCurrently we support import and export of label tracks.";
        buildType = "Simple";
      };
      components = {
        audacity = {
          depends  = [
            hsPkgs.utility-ht
            hsPkgs.deepseq
            hsPkgs.base
          ];
        };
        exes = {
          sox-concat = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.audacity
              hsPkgs.soxlib
              hsPkgs.storablevector
              hsPkgs.filepath
              hsPkgs.non-empty
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }