{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nicify-lib";
          version = "1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "";
        url = "";
        synopsis = "Pretty print the standard output of default `Show` instances.";
        description = "Pretty print the standard output of `show` for algebraic datatypes";
        buildType = "Simple";
      };
      components = {
        nicify-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.transformers
          ];
        };
      };
    }