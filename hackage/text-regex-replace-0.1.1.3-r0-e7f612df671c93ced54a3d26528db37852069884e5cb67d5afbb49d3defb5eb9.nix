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
        name = "text-regex-replace";
        version = "0.1.1.3";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "erochest@gmail.com";
      author = "Eric Rochester";
      homepage = "";
      url = "";
      synopsis = "Easy replacement when using text-icu regexes.";
      description = "This provides a convenient API for doing replacements off of a regular\nexpression, similar to what regex libraries in other languages provide.\n\nAt this point, this hasn't been used enough to have any idea of its\nperformance. Caveat emptor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.text-icu)
        ];
      };
      tests = {
        "text-regex-replace-specs" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.smallcheck)
            (hsPkgs.text)
            (hsPkgs.text-icu)
            (hsPkgs.text-regex-replace)
          ];
        };
      };
    };
  }