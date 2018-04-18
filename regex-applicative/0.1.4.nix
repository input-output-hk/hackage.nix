{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regex-applicative";
          version = "0.1.4";
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
            hsPkgs.monads-tf
            hsPkgs.vector
          ];
        };
      };
    }