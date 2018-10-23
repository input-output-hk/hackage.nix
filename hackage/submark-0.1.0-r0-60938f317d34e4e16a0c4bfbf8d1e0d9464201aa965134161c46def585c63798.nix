{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "submark";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2017 Hong Minhee";
      maintainer = "hong.minhee@gmail.com";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/submark#readme";
      url = "";
      synopsis = "Extract a part from CommonMark/Markdown docs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "submark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmark)
          (hsPkgs.text)
        ];
      };
      exes = {
        "submark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmark)
            (hsPkgs.text)
            (hsPkgs.submark)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmark)
            (hsPkgs.text)
            (hsPkgs.hlint)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmark)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.submark)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }