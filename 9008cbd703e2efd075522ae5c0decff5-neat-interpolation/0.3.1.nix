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
        name = "neat-interpolation";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/neat-interpolation";
      url = "";
      synopsis = "A quasiquoter for neat and simple multiline text interpolation";
      description = "A quasiquoter for producing Text values with support for\na simple interpolation of input values.\nIt removes the excessive indentation from the input and\naccurately manages the indentation of all lines of the interpolated variables.";
      buildType = "Simple";
    };
    components = {
      "neat-interpolation" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "api-tests" = {
          depends  = [
            (hsPkgs.neat-interpolation)
            (hsPkgs.HTF)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }