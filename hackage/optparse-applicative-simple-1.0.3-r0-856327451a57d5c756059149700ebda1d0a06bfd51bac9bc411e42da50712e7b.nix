{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optparse-applicative-simple"; version = "1.0.3"; };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/optparse-applicative-simple";
      url = "";
      synopsis = "Simple command line interface arguments parser";
      description = "A very simple API for the \\\"optparse-applicative\\\" library,\nwhich maintains the compatibility with it,\nwhile being completely self-sufficient.\nIOW, you don't need to depend on \\\"optparse-applicative\\\" to\napply this library,\nyet you still can integrate with it, when needed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.optparse-applicative)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-data)
          (hsPkgs.text)
          (hsPkgs.base-prelude)
          ];
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs.optparse-applicative-simple)
            (hsPkgs.attoparsec-data)
            (hsPkgs.rerebase)
            ];
          };
        };
      };
    }