{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-regex-replace";
          version = "0.1.1.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "erochest@gmail.com";
        author = "Eric Rochester";
        homepage = "";
        url = "";
        synopsis = "Easy replacement when using text-icu regexes.";
        description = "This provides a convenient API for doing replacements off of a regular\nexpression, similar to what regex libraries in other languages provide.\n\nAt this point, this hasn't been used enough to have any idea of its\nperformance. Caveat emptor.";
        buildType = "Simple";
      };
      components = {
        text-regex-replace = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.text-icu
          ];
        };
        tests = {
          text-regex-replace-specs = {
            depends  = [
              hsPkgs.base
              hsPkgs.text-regex-replace
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.text-icu
            ];
          };
        };
      };
    }