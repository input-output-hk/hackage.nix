{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "non-empty-zipper";
          version = "0.1.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fresheyeball@gmail.com";
        author = "Isaac Shapira";
        homepage = "";
        url = "";
        synopsis = "The Zipper for NonEmpty";
        description = "The Zipper for NonEmpty. Useful for things like tabs,\nbutton groups, and slideshows. Basically any case in which\nyou want to ensure you have one selected value from a\nlist of values.";
        buildType = "Simple";
      };
      components = {
        non-empty-zipper = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.non-empty-zipper
              hsPkgs.QuickCheck
              hsPkgs.checkers
            ];
          };
        };
      };
    }