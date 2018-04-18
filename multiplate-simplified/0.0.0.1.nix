{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "multiplate-simplified";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "2011, Balazs Endresz";
        maintainer = "Balazs Endresz <balazs.endresz@gmail.com>";
        author = "Balazs Endresz";
        homepage = "";
        url = "";
        synopsis = "Shorter, more generic functions for Multiplate.";
        description = "This module provides wrappers around some Multiplate functions to spare\nthe Projector argument. This makes it simpler to use them, and\nthey will work for any data type, but a simple instance definition\nhas to be supplied for each one.";
        buildType = "Simple";
      };
      components = {
        multiplate-simplified = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.multiplate
          ];
        };
      };
    }