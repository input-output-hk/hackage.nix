{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.6";
        identifier = {
          name = "opentheory-char";
          version = "1.30";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Hurd <joe@gilith.com>";
        author = "Joe Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Unicode characters";
        description = "Unicode characters\nAutomatically generated from the opentheory package haskell-char-1.30";
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