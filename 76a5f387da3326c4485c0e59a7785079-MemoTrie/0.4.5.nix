{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "MemoTrie";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/MemoTrie";
        url = "http://code.haskell.org/MemoTrie";
        synopsis = "Trie-based memo functions";
        description = "MemoTrie provides a basis for memoized functions over some domains,\nusing tries.  It's based on some code I got from Spencer Janssen.\n\nProject wiki page: <http://haskell.org/haskellwiki/MemoTrie>\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        MemoTrie = {
          depends  = [ hsPkgs.base ];
        };
      };
    }