{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "TrieMap";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Automatic type inference of generalized tries.";
      description = "Builds on the multirec library to create a system capable of automatic or simple generalized trie type inference.";
      buildType = "Simple";
    };
    components = {
      "TrieMap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.multirec)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.array)
        ];
      };
    };
  }