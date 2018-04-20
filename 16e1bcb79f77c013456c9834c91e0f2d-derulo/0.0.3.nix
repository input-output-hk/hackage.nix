{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "derulo";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/derulo#readme";
        url = "";
        synopsis = "Parse and render JSON simply.";
        description = "Derulo parses and renders JSON simply.";
        buildType = "Simple";
      };
      components = {
        derulo = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          derulo = {
            depends  = [
              hsPkgs.base
              hsPkgs.derulo
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }