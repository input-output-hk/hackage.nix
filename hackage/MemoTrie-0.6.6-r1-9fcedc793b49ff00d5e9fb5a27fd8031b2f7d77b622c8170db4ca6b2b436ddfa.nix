{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "MemoTrie";
        version = "0.6.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/MemoTrie";
      url = "";
      synopsis = "Trie-based memo functions";
      description = "MemoTrie provides a basis for memoized functions over some domains,\nusing tries.  It's based on ideas from Ralf Hinze and code from\nSpencer Janssen. Generic support thanks to Sam Boosalis.\n\nProject wiki page: <http://haskell.org/haskellwiki/MemoTrie>\n\n&#169; 2008-2015 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "MemoTrie" = {
        depends  = if compiler.isGhc && compiler.version.ge "7.10.0"
          then [
            (hsPkgs.base)
            (hsPkgs.newtype-generics)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.void)
            (hsPkgs.newtype-generics)
          ];
      };
      exes = {
        "generic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.MemoTrie)
          ];
        };
      };
    };
  }