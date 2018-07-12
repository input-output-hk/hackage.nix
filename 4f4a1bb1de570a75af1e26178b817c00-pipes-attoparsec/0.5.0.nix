{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-attoparsec";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Renzo Carbonara 2012-2014, Paolo Capriotti 2012";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/pipes-attoparsec";
        url = "";
        synopsis = "Attoparsec and Pipes integration.";
        description = "Utilities to run Attoparsec parsers on Pipes input streams.\n\nSee the @changelog.md@ file in the source distribution to learn about any\nimportant changes between version.";
        buildType = "Simple";
      };
      components = {
        "pipes-attoparsec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.pipes
            hsPkgs.pipes-parse
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.mmorph
              hsPkgs.pipes
              hsPkgs.pipes-attoparsec
              hsPkgs.pipes-parse
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }