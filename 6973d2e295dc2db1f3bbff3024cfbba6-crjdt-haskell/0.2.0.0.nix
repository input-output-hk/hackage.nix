{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crjdt-haskell";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Amar Potghan";
        maintainer = "amarpotghan@gmail.com";
        author = "Amar Potghan";
        homepage = "https://github.com/amarpotghan/crjdt-haskell#readme";
        url = "";
        synopsis = "A Conflict-Free Replicated JSON Datatype for Haskell";
        description = "A Conflict-Free Replicated JSON Datatype for Haskell";
        buildType = "Simple";
      };
      components = {
        "crjdt-haskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.free
          ];
        };
        exes = {
          "examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crjdt-haskell
            ];
          };
        };
        tests = {
          "crjdt-haskell-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crjdt-haskell
              hsPkgs.hspec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.hedgehog
            ];
          };
        };
      };
    }