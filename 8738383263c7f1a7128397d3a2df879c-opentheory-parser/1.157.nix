{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "opentheory-parser";
          version = "1.157";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Stream parsers";
        description = "Stream parsers - this package was automatically generated from the\nOpenTheory package parser-1.157";
        buildType = "Simple";
      };
      components = {
        opentheory-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
            hsPkgs.opentheory
          ];
        };
        tests = {
          opentheory-parser-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory
            ];
          };
        };
      };
    }