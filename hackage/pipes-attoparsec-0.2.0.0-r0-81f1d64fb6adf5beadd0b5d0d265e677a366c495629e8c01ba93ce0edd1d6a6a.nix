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
        name = "pipes-attoparsec";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2012-2013, Paolo Capriotti 2012";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-attoparsec";
      url = "";
      synopsis = "Attoparsec and Pipes integration.";
      description = "Utilities to run @attoparsec@ parsers on @pipes@ input streams.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "pipes-attoparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.pipes-parse)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mmorph)
            (hsPkgs.pipes)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.pipes-parse)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }