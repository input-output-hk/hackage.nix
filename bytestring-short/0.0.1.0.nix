{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bytestring-short";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Don Stewart          2005-2009,\n(c) Duncan Coutts        2006-2013,\n(c) David Roundy         2003-2005,\n(c) Kei Hibino           2015.";
        maintainer = "Kei Hibino <ex8k.hibino@gmail.com>";
        author = "Kei Hibino";
        homepage = "";
        url = "";
        synopsis = "Backport copy of ShortByteString";
        description = "Backport copy of ShortByteString";
        buildType = "Simple";
      };
      components = {
        bytestring-short = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
          ];
        };
        tests = {
          prop-compiled = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring-short
              hsPkgs.bytestring
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }