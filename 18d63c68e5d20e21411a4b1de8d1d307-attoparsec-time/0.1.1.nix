{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "attoparsec-time";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/attoparsec-time";
      url = "";
      synopsis = "Attoparsec parsers of time";
      description = "A collection of Attoparsec parsers for the \\\"time\\\" library";
      buildType = "Custom";
    };
    components = {
      "attoparsec-time" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.doctest)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }