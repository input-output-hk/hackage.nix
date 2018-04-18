{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "derive-trie";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andreas Baldeau <andreas@baldeau.net>";
        author = "Peter Findeisen, Frank Huch, Sebastian Fischer, Andreas Baldeau";
        homepage = "http://github.com/baldo/derive-trie";
        url = "";
        synopsis = "Automatic derivation of Trie implementations.";
        description = "Automatic derivation of Trie implementations from user\ndefined key types with Template Haskell. Uses KeyMap class\nas interface for tries.";
        buildType = "Simple";
      };
      components = {
        derive-trie = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
      };
    }