{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "tokenize";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gchrupala@lsv.uni-saarland.de";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/lingo/overview";
      url = "";
      synopsis = "Simple tokenizer for English text.";
      description = "Simple tokenizer for English text.";
      buildType = "Simple";
    };
    components = {
      "tokenize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }