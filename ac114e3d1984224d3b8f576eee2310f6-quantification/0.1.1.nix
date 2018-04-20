{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quantification";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/quantification#readme";
        url = "";
        synopsis = "Data types and typeclasses to deal with universally and existentially quantified types";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        quantification = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.path-pieces
          ];
        };
      };
    }