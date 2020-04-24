{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "TrieMap"; version = "0.7.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."multirec" or ((hsPkgs.pkgs-errors).buildDepError "multirec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."th-expand-syns" or ((hsPkgs.pkgs-errors).buildDepError "th-expand-syns"))
          ];
        buildable = true;
        };
      };
    }