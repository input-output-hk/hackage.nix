{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "word-trie";
        version = "0.2.0.3";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/yi-editor/yi";
      url = "";
      synopsis = "Implementation of a finite trie over words.";
      description = "Implementation of a finite trie over words.";
      buildType = "Simple";
    };
    components = {
      "word-trie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.derive)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }