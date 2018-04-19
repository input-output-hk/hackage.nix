{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "derp";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "david.darais@gmail.com";
        author = "David Darais";
        homepage = "";
        url = "";
        synopsis = "Derivative Parsing";
        description = "A parser based on derivatives of parser combinators (Might and Darais).";
        buildType = "Simple";
      };
      components = {
        derp = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }