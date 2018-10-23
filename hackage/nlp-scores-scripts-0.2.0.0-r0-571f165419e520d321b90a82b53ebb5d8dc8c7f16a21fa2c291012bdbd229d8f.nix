{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nlp-scores-scripts";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/lingo";
      url = "";
      synopsis = "NLP scoring command-line programs";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nlp-scores)
            (hsPkgs.text)
            (hsPkgs.split)
            (hsPkgs.containers)
          ];
        };
        "mean" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nlp-scores)
            (hsPkgs.text)
            (hsPkgs.split)
          ];
        };
      };
    };
  }