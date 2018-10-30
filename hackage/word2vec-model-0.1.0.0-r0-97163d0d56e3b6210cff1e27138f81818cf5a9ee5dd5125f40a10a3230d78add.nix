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
      specVersion = "1.10";
      identifier = {
        name = "word2vec-model";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "filipg@amu.edu.pl";
      author = "Filip Graliński";
      homepage = "https://gonito.net/gitlist/word2vec-model.git";
      url = "";
      synopsis = "Reading word2vec binary models";
      description = "Please see the README on Github at <https://gonito.net/gitlist/word2vec-model.git/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-ieee754)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "word2vec-model-similarity" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-ieee754)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word2vec-model)
          ];
        };
        "word2vec-model-word-analogy" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-ieee754)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word2vec-model)
          ];
        };
      };
      tests = {
        "word2vec-model-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-ieee754)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word2vec-model)
          ];
        };
      };
    };
  }