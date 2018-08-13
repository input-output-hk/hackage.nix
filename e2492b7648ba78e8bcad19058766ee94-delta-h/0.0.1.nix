{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "delta-h";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupala and Afra Alishahi";
      homepage = "https://bitbucket.org/gchrupala/delta-h";
      url = "";
      synopsis = "Online entropy-based model of lexical category acquisition.";
      description = "Implementation of the model described in Grzegorz Chrupała\nand Afra Alishahi, Online Entropy-based Model of\nLexical Category Acquisition, CoNLL 2010\n<http://www.lsv.uni-saarland.de/personalPages/gchrupala/papers/conll-2010.pdf>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "delta-h" = {
          depends  = [
            (hsPkgs.nlp-scores)
            (hsPkgs.monad-atom)
            (hsPkgs.binary)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.base)
          ];
        };
      };
    };
  }