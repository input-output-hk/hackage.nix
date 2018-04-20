{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hinduce-missingh";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hackage@roberthensing.nl";
        author = "Robert Hensing";
        homepage = "https://github.com/roberth/hinduce-missingh";
        url = "";
        synopsis = "Utility functions";
        description = "Extends base with all sorts of utility functions. Very easy, useful and portable";
        buildType = "Simple";
      };
      components = {
        hinduce-missingh = {
          depends  = [ hsPkgs.base ];
        };
      };
    }