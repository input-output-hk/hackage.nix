{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parser-helper";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "jonsson.peter.a@gmail.com";
        author = "Peter A. Jonsson";
        homepage = "";
        url = "";
        synopsis = "Prints Haskell parse trees in JSON.";
        description = "Serialize haskell-src-exts parse trees to JSON.";
        buildType = "Simple";
      };
      components = {
        exes = {
          parser-helper = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.haskell-src-exts
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
        };
      };
    }