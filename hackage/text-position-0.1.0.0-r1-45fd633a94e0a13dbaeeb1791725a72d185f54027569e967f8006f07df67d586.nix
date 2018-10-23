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
        name = "text-position";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/text-position/";
      url = "";
      synopsis = "Handling positions in text and position-tagging it.";
      description = "This package provides tools for tagging text with\npositions (line, column, character), and getting position\naware tokens from lexical analysis (see regex-applicative\npackage). It is based on Advances, a thin abstraction over\nregular expressions.";
      buildType = "Simple";
    };
    components = {
      "text-position" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-applicative)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.regex-applicative)
            (hsPkgs.text-position)
          ];
        };
      };
    };
  }