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
        name = "prettyprinter-convert-ansi-wl-pprint";
        version = "1.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky at google>";
      author = "David Luposchainsky";
      homepage = "http://github.com/quchen/prettyprinter";
      url = "";
      synopsis = "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.";
      description = "This package defines a converter from the\nold [ansi-wl-pprint](/package/ansi-wl-pprint) document type to the\nnew [prettyprinter](/package/prettyprinter) one. Its purpose is making\npackages that only generate [ansi-wl-pprint](/package/ansi-wl-pprint)\ndata available to the [prettyprinter](/package/prettyprinter)\necosystem.\n\nNote the difference to\nthe [prettyprinter-compat-ansi-wl-pprint](package/prettyprinter-compat-ansi-wl-pprint)\npackage, which does /not/ convert any data, and instead provides an\nAPI that mimicks [ansi-wl-pprint](/package/ansi-wl-pprint), while\nsecretly being [prettyprinter](/package/prettyprinter)-based behind\nthe curtains. This package on the other hand does a proper conversion.\n\n> ╭────────────────────╮    fromAnsiWlPprint    ╭────────────────────╮\n> │        Doc         ├───────────────────────▷│   Doc AnsiStyle    │\n> │  (ansi-wl-pprint)  │◁───────────────────────┤  (prettyprinter)   │\n> ╰────────────────────╯     toAnsiWlPprint     ╰────────────────────╯";
      buildType = "Simple";
    };
    components = {
      "prettyprinter-convert-ansi-wl-pprint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.ansi-terminal)
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