{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nero";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 J. Daniel Navarro";
        maintainer = "Danny Navarro <j@dannynavarro.net>";
        author = "Danny Navarro";
        homepage = "https://github.com/plutonbrb/nero";
        url = "";
        synopsis = "Lens-based HTTP toolkit";
        description = "This package provides the core functionality of the @Nero@ HTTP toolkit.\n\nCheck the <https://github.com/plutonbrb/nero#nero README> for a more\ndetailed explanation.";
        buildType = "Simple";
      };
      components = {
        nero = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bifunctors
            hsPkgs.lens
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
            ];
          };
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.lens
              hsPkgs.nero
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }