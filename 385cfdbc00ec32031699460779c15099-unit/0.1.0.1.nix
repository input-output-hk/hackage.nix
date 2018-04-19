{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unit";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Andrew Mohrland";
        maintainer = "amohrland@gmail.com";
        author = "Andrew Mohrland";
        homepage = "https://github.com/amohrland/haskell-unit";
        url = "";
        synopsis = "Aliases for `()`.";
        description = "Aliases for `()`.";
        buildType = "Simple";
      };
      components = {
        unit = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          unit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.unit
              hsPkgs.hspec
            ];
          };
        };
      };
    }