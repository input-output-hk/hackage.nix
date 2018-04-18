{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "torsor";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/torsor#readme";
        url = "";
        synopsis = "Torsor Typeclass";
        description = "Torsor Typeclass";
        buildType = "Simple";
      };
      components = {
        torsor = {
          depends  = [ hsPkgs.base ];
        };
      };
    }