{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iban";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tobias Florek, 2014";
        maintainer = "tob@butter.sh";
        author = "Tobias Florek";
        homepage = "https://github.com/ibotty/haskell-iban";
        url = "";
        synopsis = "Validate and generate IBANs";
        description = "A library to validate and generate (for now only German) IBANs.";
        buildType = "Simple";
      };
      components = {
        "iban" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.iso3166-country-codes
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.iban
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }