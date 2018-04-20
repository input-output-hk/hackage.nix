{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snowflake";
          version = "0.1.1.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "edofic@gmail.com";
        author = "Andraz Bajt";
        homepage = "";
        url = "";
        synopsis = "A loose port of Twitter Snowflake to Haskell. Generates arbitrary precision, unique, time-sortable identifiers.";
        description = "";
        buildType = "Simple";
      };
      components = {
        snowflake = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }