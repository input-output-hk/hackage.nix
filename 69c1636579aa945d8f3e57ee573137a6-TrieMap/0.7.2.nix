{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "TrieMap";
          version = "0.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Automatic type inference of generalized tries.";
        description = "Builds on the multirec library to create a system capable of automatic or simple generalized trie type inference.  Uses Template Haskell to automatically derive a TKey instance for almost any datatype.  Just splice @'Data.TrieMap.Representation.TH.genRepr' \\'\\'Foo@\nto derive a 'Data.TrieMap.Class.TKey' instance for @Foo@.  (It works if @Foo@ has type arguments, too!)";
        buildType = "Simple";
      };
      components = {
        "TrieMap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.multirec
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.th-expand-syns
          ];
        };
      };
    }