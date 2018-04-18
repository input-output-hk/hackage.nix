{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "derive-storable";
          version = "0.1.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mateusz.p.kloczko@gmail.com";
        author = "Mateusz Kloczko";
        homepage = "https://www.github.com/mkloczko/derive-storable/";
        url = "";
        synopsis = "Derive Storable instances with GHC.Generics.";
        description = "Derive Storable instances with GHC.Generics. The derived Storable instances have the same alignment as C structs.";
        buildType = "Simple";
      };
      components = {
        derive-storable = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          c_alignment = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.derive-storable
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.derive-storable
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }