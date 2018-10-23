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
        name = "ace";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Attempto Controlled English parser and printer";
      description = "Attempto Controlled English is a formally defined unambiguous language which\nis a subset of the English language. This package provides a tokenizer,\nparser and printer for that language. Specifically, it implements the\ndeclarative mood and the interrogative mood.\nThe imperative mood is omitted at this time. Interpretation rules,\nconversion to FoL, or any further analysis is not implemented by this\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "ace" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.parsec)
          (hsPkgs.data-default)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ace)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.bifunctors)
            (hsPkgs.text)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }