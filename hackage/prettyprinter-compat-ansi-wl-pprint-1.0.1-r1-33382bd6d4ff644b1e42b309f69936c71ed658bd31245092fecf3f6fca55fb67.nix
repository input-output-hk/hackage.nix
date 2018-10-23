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
        name = "prettyprinter-compat-ansi-wl-pprint";
        version = "1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky at google>";
      author = "David Luposchainsky";
      homepage = "http://github.com/quchen/prettyprinter";
      url = "";
      synopsis = "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«.";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "prettyprinter-compat-ansi-wl-pprint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
        ];
      };
    };
  }