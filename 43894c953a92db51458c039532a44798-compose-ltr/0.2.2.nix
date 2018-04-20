{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "compose-ltr";
          version = "0.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "123.wizek@gmail.com";
        author = "Milán Nagy";
        homepage = "";
        url = "";
        synopsis = "More intuitive, left-to-right function composition.";
        description = "More intuitive, left-to-right function composition.";
        buildType = "Simple";
      };
      components = {
        compose-ltr = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.compose-ltr
            ];
          };
        };
      };
    }