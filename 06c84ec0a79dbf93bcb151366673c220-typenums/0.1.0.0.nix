{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "typenums";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Iris Ward";
        maintainer = "aditu.venyhandottir@gmail.com";
        author = "AdituV";
        homepage = "https://github.com/adituv/typenums#readme";
        url = "";
        synopsis = "Type level numbers using existing Nat functionality";
        description = "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.";
        buildType = "Simple";
      };
      components = {
        typenums = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          typenums-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.typenums
            ];
          };
        };
      };
    }