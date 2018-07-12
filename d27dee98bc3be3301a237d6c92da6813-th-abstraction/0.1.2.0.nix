{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-abstraction";
          version = "0.1.2.0";
        };
        license = "ISC";
        copyright = "2017 Eric Mertens";
        maintainer = "emertens@gmail.com";
        author = "Eric Mertens";
        homepage = "https://github.com/glguy/th-abstraction";
        url = "";
        synopsis = "Nicer interface for reified information about data types";
        description = "This package normalizes variations in the interface for\ninspecting datatype information via Template Haskell\nso that packages and support a single, easier to use\ninformational datatype while supporting many versions\nof Template Haskell.";
        buildType = "Simple";
      };
      components = {
        "th-abstraction" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.template-haskell
            hsPkgs.containers
          ];
        };
        tests = {
          "unit-tests" = {
            depends  = [
              hsPkgs.th-abstraction
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }