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
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "TrieMap"; version = "0.7.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."multirec" or (errorHandler.buildDepError "multirec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
        ];
        buildable = true;
      };
    };
  }