{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tokenify";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aksthomsen@gmail.com";
        author = "Angus Thomsen";
        homepage = "https://github.com/AKST/tokenify";
        url = "";
        synopsis = "A regex based LR tokenizer";
        description = "A LR tokenizier used to split text into tokens";
        buildType = "Simple";
      };
      components = {
        tokenify = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
          ];
        };
      };
    }