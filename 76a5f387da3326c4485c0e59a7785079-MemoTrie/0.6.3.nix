{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MemoTrie";
          version = "0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2012 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/MemoTrie";
        url = "";
        synopsis = "Trie-based memo functions";
        description = "MemoTrie provides a basis for memoized functions over some domains,\nusing tries.  It's based on ideas from Ralf Hinze and code from\nSpencer Janssen.\n\nProject wiki page: <http://haskell.org/haskellwiki/MemoTrie>\n\n&#169; 2008-2012 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        "MemoTrie" = {
          depends  = [
            hsPkgs.base
            hsPkgs.void
          ];
        };
      };
    }