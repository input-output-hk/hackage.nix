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
      specVersion = "1.4";
      identifier = {
        name = "hmark";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://bitcheese.net/wiki/code/hmark";
      url = "";
      synopsis = "A tool and library for Markov chains based text generation.";
      description = "A tool and library for Markov chains based text generation.";
      buildType = "Simple";
    };
    components = {
      "hmark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tokyocabinet-haskell)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "hmark" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }