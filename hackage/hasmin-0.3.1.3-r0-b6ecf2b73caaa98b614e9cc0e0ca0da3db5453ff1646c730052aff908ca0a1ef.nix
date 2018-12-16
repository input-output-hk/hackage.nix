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
        name = "hasmin";
        version = "0.3.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Cristian Adrián Ontivero <cristianontivero@gmail.com>";
      author = "(c) 2017 Cristian Adrián Ontivero <cristianontivero@gmail.com>";
      homepage = "https://github.com/contivero/hasmin/";
      url = "";
      synopsis = "\"A CSS Minifier\"";
      description = "A CSS minifier which not only aims at reducing the amount of bytes of the\noutput, but also at improving gzip compression. By default, the output is the\nminified CSS file, but hasmin allows also its compression into gzip using\nGoogle's Zopfli library.\n\nTo use it: ./hasmin input.css > output.css\n\nBy default, most minification techniques are enabled. For a list of\navailable flags, do: ./hasmin --help";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.matrix)
          (hsPkgs.mtl)
          (hsPkgs.numbers)
          (hsPkgs.parsers)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hasmin" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsers)
            (hsPkgs.text)
            (hsPkgs.hopfli)
            (hsPkgs.bytestring)
            (hsPkgs.gitrev)
            (hsPkgs.matrix)
            (hsPkgs.mtl)
            (hsPkgs.numbers)
            (hsPkgs.hasmin)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hasmin)
          ];
        };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.doctest)
            (hsPkgs.hasmin)
          ];
        };
      };
    };
  }