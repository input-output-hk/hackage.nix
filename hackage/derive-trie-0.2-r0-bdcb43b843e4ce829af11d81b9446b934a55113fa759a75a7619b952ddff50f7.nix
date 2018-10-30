{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "derive-trie";
        version = "0.2";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }