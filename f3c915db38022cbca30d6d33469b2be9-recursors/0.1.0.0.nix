{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "recursors";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://www.github.com/jwiegley/recursors";
        url = "";
        synopsis = "Auto-generate final encodings and their isomorphisms using Template Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        "recursors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.recursors
              hsPkgs.template-haskell
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }