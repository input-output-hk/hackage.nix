{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "normalize-imports";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kenny Shen <kenny@machinesung.com>";
        author = "";
        homepage = "https://github.com/qoelet/normalize-imports#readme";
        url = "";
        synopsis = "Sort and align Haskell import statements";
        description = "See README at <http://github.com/qoelet/normalize-imports#readme>";
        buildType = "Simple";
      };
      components = {
        exes = {
          normalize-imports = {
            depends  = [ hsPkgs.base ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
        };
      };
    }