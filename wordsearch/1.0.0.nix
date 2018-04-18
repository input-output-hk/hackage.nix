{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wordsearch";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "KrabbyKrap@gmail.com";
        author = "Byron James Johnson";
        homepage = "";
        url = "";
        synopsis = "A word search solver library and executable";
        description = "A word search solver library and executable";
        buildType = "Simple";
      };
      components = {
        wordsearch = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.fclabels
            hsPkgs.data-default
          ];
        };
        exes = {
          wordSearch = {
            depends  = [
              hsPkgs.base
              hsPkgs.fclabels
            ];
          };
        };
      };
    }