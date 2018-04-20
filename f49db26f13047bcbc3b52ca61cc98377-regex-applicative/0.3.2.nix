{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regex-applicative";
          version = "0.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "https://github.com/feuerbach/regex-applicative";
        url = "";
        synopsis = "Regex-based parsing with applicative interface";
        description = "regex-applicative is a Haskell library for parsing using regular expressions.\nParsers can be built using Applicative interface.";
        buildType = "Simple";
      };
      components = {
        regex-applicative = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
        tests = {
          test-regex-applicative = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-hunit
              hsPkgs.regex-applicative
            ];
          };
        };
      };
    }