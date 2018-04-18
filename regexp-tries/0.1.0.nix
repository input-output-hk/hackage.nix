{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "regexp-tries";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andreas Baldeau <andreas@baldeau.net>";
        author = "Andreas Baldeau";
        homepage = "http://github.com/baldo/regexp-tries";
        url = "";
        synopsis = "Regular Expressions on Tries.";
        description = "Regular Expressions on Tries.";
        buildType = "Simple";
      };
      components = {
        regexp-tries = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.derive-trie
            hsPkgs.template-haskell
            hsPkgs.weighted-regexp
          ];
        };
      };
    }