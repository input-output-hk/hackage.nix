{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "valor";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "2018 Luka Hadžiegrić";
        maintainer = "reygoch@gmail.com";
        author = "Luka Hadžiegrić";
        homepage = "https://github.com/reygoch/valor#readme";
        url = "";
        synopsis = "Simple general structured validation library";
        description = "Please see the README on GitHub at <https://github.com/reygoch/valor#readme>";
        buildType = "Simple";
      };
      components = {
        "valor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          "valor-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.checkers
              hsPkgs.hspec
              hsPkgs.hspec-checkers
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.valor
            ];
          };
        };
      };
    }