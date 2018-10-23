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
        name = "rison";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Martin Vlk";
      maintainer = "martin@vlkk.cz";
      author = "Martin Vlk";
      homepage = "https://github.com/martinvlk/rison-hs#readme";
      url = "";
      synopsis = "Parses and renders RISON strings.";
      description = "Rison gets parsed into and serialized from Aeson Valueobjects. Please see README.md for details.";
      buildType = "Simple";
    };
    components = {
      "rison" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.parsers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.strings)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.text-format)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.parsers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.strings)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.rison)
            (hsPkgs.scientific)
            (hsPkgs.text-format)
          ];
        };
      };
    };
  }