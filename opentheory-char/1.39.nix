{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.6";
        identifier = {
          name = "opentheory-char";
          version = "1.39";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Unicode characters";
        description = "Unicode characters - automatically generated from the opentheory package\nhaskell-char-1.39";
        buildType = "Simple";
      };
      components = {
        opentheory-char = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
            hsPkgs.opentheory
            hsPkgs.opentheory-parser
          ];
        };
        exes = {
          opentheory-char-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory
              hsPkgs.opentheory-parser
            ];
          };
        };
      };
    }