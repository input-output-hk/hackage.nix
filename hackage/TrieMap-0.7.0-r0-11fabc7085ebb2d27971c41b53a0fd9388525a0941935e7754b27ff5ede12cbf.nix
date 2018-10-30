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
      specVersion = "0";
      identifier = {
        name = "TrieMap";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Automatic type inference of generalized tries.";
      description = "Builds on the multirec library to create a system capable of automatic or simple generalized trie type inference.  Uses Template Haskell to automatically derive a TKey instance for almost any datatype.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.multirec)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.th-expand-syns)
        ];
      };
    };
  }