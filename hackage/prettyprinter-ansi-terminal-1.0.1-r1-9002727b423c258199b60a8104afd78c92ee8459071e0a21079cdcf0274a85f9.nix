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
        name = "prettyprinter-ansi-terminal";
        version = "1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky at google>";
      author = "David Luposchainsky";
      homepage = "http://github.com/quchen/prettyprinter";
      url = "";
      synopsis = "ANSI terminal backend for the »prettyprinter« package.";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "prettyprinter-ansi-terminal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.text)
          (hsPkgs.prettyprinter)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }