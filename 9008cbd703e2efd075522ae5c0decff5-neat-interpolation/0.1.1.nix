{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "neat-interpolation";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2013, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov";
        homepage = "https://github.com/nikita-volkov/neat-interpolation";
        url = "";
        synopsis = "A quasiquoter for neat and simple multiline text interpolation";
        description = "NeatInterpolation provides a quasiquoter for producing `Text` data with a simple interpolation of input values. It removes the excessive indentation from the input text and accurately manages the indentation of all lines of interpolated variables.";
        buildType = "Simple";
      };
      components = {
        neat-interpolation = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.template-haskell
            hsPkgs.parsec
          ];
        };
      };
    }