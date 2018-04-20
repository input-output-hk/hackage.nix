{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nero";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 J. Daniel Navarro";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/nero";
        url = "";
        synopsis = "Lens-based HTTP toolkit";
        description = "This package represents the core of the @Nero@ HTTP toolkit.\n\nThis an initial alpha release with just basic routing and HTTP parameters\nhandling.\n\nCheck the <https://github.com/jdnavarro/nero#nero README> for a more\ndetailed explanation.";
        buildType = "Simple";
      };
      components = {
        nero = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.safe
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