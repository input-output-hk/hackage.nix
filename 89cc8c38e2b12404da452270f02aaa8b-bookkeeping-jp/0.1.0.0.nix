{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bookkeeping-jp";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/haskell-bookkeeping-jp#readme";
        url = "";
        synopsis = "Helper functions for Japanese bookkeeping.";
        description = "Helper functions of [bookkeeping module](https://github.com/arowM/haskell-bookkeeping#readme) for Japanese bookkeeping.";
        buildType = "Simple";
      };
      components = {
        bookkeeping-jp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bookkeeping
          ];
        };
        tests = {
          bookkeeping-jp-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bookkeeping-jp
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
              hsPkgs.bookkeeping-jp
            ];
          };
        };
      };
    }