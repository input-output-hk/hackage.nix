{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "MemoTrie"; version = "0.6.10"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2019 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott ";
      homepage = "https://github.com/conal/MemoTrie";
      url = "";
      synopsis = "Trie-based memo functions";
      description = "MemoTrie provides a basis for memoized functions over some domains,\nusing tries.  It's based on ideas from Ralf Hinze and code from\nSpencer Janssen. Generic support thanks to Sam Boosalis.\n\nProject wiki page: <http://haskell.org/haskellwiki/MemoTrie>\n\n&#199; 2008-2019 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if compiler.isGhc && compiler.version.ge "7.10.0"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          ];
        buildable = true;
      };
      exes = {
        "generic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }