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
        name = "record-preprocessor";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record-preprocessor";
      url = "";
      synopsis = "Compiler preprocessor introducing a syntactic extension for anonymous records";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "record-preprocessor" = {
          depends  = [
            (hsPkgs.record-syntax)
            (hsPkgs.conversion)
            (hsPkgs.conversion-text)
            (hsPkgs.text)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
      benchmarks = {
        "demo" = {
          depends  = [
            (hsPkgs.record)
            (hsPkgs.record-syntax)
            (hsPkgs.basic-lens)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }